# isDefEqSafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:279eb932a68ad298bda75796a7decae6643fa7eaad4263c9bb32babbe0678537",
  "kind": "def",
  "lexical_name": "isDefEqSafe",
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
  "slug": "isdefeqsafe--1d961afdf5ef42997a3ad266",
  "source": {
    "blob": "511cb1a1b729b413ef6245cb3c95f8ceeca6bfa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d961afdf5ef42997a3ad266924677d18bc7128d187ce4ac1013ee83c94d8271",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:279eb932a68ad298bda75796a7decae6643fa7eaad4263c9bb32babbe0678537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDefEqSafe (a b : Expr) : MetaM Bool :=
  try isDefEq a b catch _ => pure false

/-- If an atomic expression has already been encountered, get the index and the stored form of the
atom (which will be defeq at the specified transparency, but not necessarily syntactically equal).
If the atomic expression has *not* already been encountered, store it in the list of atoms, and
return the new index (and the stored form of the atom, which will be itself).

In a normalizing tactic, the expression returned by `addAtom` should be considered the normal form.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `511cb1a1b729b413ef6245cb3c95f8ceeca6bfa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
