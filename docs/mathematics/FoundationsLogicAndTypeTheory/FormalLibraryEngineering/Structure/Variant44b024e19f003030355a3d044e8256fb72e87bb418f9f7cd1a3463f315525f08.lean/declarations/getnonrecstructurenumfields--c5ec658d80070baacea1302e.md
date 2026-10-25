# getNonRecStructureNumFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:367594b2d4407118759e1354df84d1c6768b66acd0317d349a404ee2d7ec1df7",
  "kind": "def",
  "lexical_name": "getNonRecStructureNumFields",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "getnonrecstructurenumfields--c5ec658d80070baacea1302e",
  "source": {
    "blob": "abd489a9ac6813ceaa5176d860866eb94f5fd566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 386,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5ec658d80070baacea1302e5156e4a5379d2976b293390a3cfe6200e2d1e544",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:367594b2d4407118759e1354df84d1c6768b66acd0317d349a404ee2d7ec1df7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getNonRecStructureNumFields (env : Environment) (constName : Name) : Nat :=
  match env.find? constName with
  | some (.inductInfo { isRec := false, ctors := [ctor], numIndices := 0, .. }) =>
    match env.find? ctor with
    | some (.ctorInfo { numFields := n, .. }) => n
    | _ => 0
  | _ => 0

/-!
### Resolution orders

This section is for computations to determine which namespaces to visit when resolving field notation.
While the set of namespaces is clear (after a structure's namespace, it is the namespaces for *all* parents),
the question is the order to visit them in.

We use the C3 superclass linearization algorithm from Barrett et al., "A Monotonic Superclass Linearization for Dylan", OOPSLA 1996.
For reference, the C3 linearization is known as the "method resolution order" (MRO) [in Python](https://docs.python.org/3/howto/mro.html).

The basic idea is that we want to find a resolution order with the following property:
For each structure `S` that appears in the resolution order, if its direct parents are `P₁ .. Pₙ`,
then `S P₁ ... Pₙ` forms a subsequence of the resolution order.

This has a stability property where if `S` extends `S'`, then the resolution order of `S` contains the resolution order of `S'` as a subsequence.
It also has the key property that if `P` and `P'` are parents of `S`, then we visit `P` and `P'` before we visit the shared parents of `P` and `P'`.

Finding such a resolution order might not be possible.
Still, we can enable a relaxation of the algorithm by ignoring one or more parent resolution orders, starting from the end.

In Hivert and Thiéry "Controlling the C3 super class linearization algorithm for large hierarchies of classes"
https://arxiv.org/pdf/2401.12740 the authors discuss how in SageMath, which has thousands of classes,
C3 can be difficult to control, since maintaining correct direct parent orders is a burden.
They give suggestions that have worked for the SageMath project.
We may consider introducing an environment extension with ordering hints to help guide the algorithm if we see similar difficulties.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd489a9ac6813ceaa5176d860866eb94f5fd566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
