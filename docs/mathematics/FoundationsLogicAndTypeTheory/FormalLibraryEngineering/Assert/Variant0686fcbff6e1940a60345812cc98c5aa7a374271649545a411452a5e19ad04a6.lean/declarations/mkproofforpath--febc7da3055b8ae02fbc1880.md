# mkProofForPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b47ee2a616396b29b05dad757cc1124fa59b8f15f4173732d91a674417b6d41c",
  "kind": "def",
  "lexical_name": "mkProofForPath",
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
  "slug": "mkproofforpath--febc7da3055b8ae02fbc1880",
  "source": {
    "blob": "594ada1a082947cdf91e044010ea092a8febbc79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:febc7da3055b8ae02fbc188044dea0ad4a7adb7b4258a36f98dee30646b5f9d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b47ee2a616396b29b05dad757cc1124fa59b8f15f4173732d91a674417b6d41c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkProofForPath (u v : NodeId) : OrderM Expr := do
  go (← getProof u v)
where
  go (p : ProofInfo) : OrderM Expr := do
    if u == p.w then
      return p.proof
    else
      let p' ← getProof u p.w
      go (← mkTrans p' p v)

/--
Given a new edge edge `u --(kuv)--> v` justified by proof `huv` s.t.
it creates a negative cycle with the existing path `v --{kvu}-->* u`, i.e., `kuv + kvu < 0`,
this function closes the current goal by constructing a proof of `False`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant0686fcbff6e1940a60345812cc98c5aa7a374271649545a411452a5e19ad04a6.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594ada1a082947cdf91e044010ea092a8febbc79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
