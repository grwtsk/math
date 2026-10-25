# signChange_idx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30d7d4fea525b442aec523413d5e223bfb36bcb8154226c27012f03725b557f1",
  "kind": "def",
  "lexical_name": "signChange_idx",
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
  "slug": "signchange-idx--7ece87fd0910c9496f4fe2ff",
  "source": {
    "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 179,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ece87fd0910c9496f4fe2ff3bb0208aac39b93cb5f7d0878c6757ff16c6752b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30d7d4fea525b442aec523413d5e223bfb36bcb8154226c27012f03725b557f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def signChange_idx (e : Expr) (ρ_int : IntervalEnv) (idx : Nat) : Bool :=
  -- Evaluate at left endpoint of idx
  let ρ_lo := fun i => if i = idx then IntervalRat.singleton (ρ_int idx).lo else ρ_int i
  -- Evaluate at right endpoint of idx
  let ρ_hi := fun i => if i = idx then IntervalRat.singleton (ρ_int idx).hi else ρ_int i
  let flo := evalInterval e ρ_lo
  let fhi := evalInterval e ρ_hi
  (flo.hi < 0 ∧ 0 < fhi.lo) ∨ (fhi.hi < 0 ∧ 0 < flo.lo)

/-- Initial root status check along coordinate `idx` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd95c784f254c3e8b7cff9c2c08b85870b070ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
