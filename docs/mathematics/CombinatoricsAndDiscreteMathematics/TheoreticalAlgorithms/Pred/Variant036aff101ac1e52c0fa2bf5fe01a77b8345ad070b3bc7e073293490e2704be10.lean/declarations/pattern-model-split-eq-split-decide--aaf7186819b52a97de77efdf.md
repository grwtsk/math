# Pattern.Model.split_eq_split_decide

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca6d1ee4-7c3d-9432-3c6e-4fc9440fe88e",
  "kind": "theorem",
  "lexical_name": "Pattern.Model.split_eq_split_decide",
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
  "slug": "pattern-model-split-eq-split-decide--aaf7186819b52a97de77efdf",
  "source": {
    "blob": "6033f1d972967805d4e6e685f62c46c220478ba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf7186819b52a97de77efdf0f29497ce45d3a363e62aca7c1f058638e20f4a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca6d1ee4-7c3d-9432-3c6e-4fc9440fe88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pattern.Model.split_eq_split_decide {p : Char → Prop} [DecidablePred p] {s : Slice}
    (f curr : s.Pos) (hle : f ≤ curr) :
    Model.split p f curr hle = Model.split (decide <| p ·) f curr hle := by
  fun_induction Model.split p f curr hle with
  | case1 fr h => simp
  | case2 fr curr hle h pos h₁ h₂ ih =>
    conv => rhs; rw [Model.split]
    simp only [h, ↓reduceDIte]
    split <;> simp_all [matchAt?_eq_matchAt?_decide]
  | case3 fr curr hle h pos ih =>
    conv => rhs; rw [Model.split]
    simp only [h, ↓reduceDIte]
    split <;> simp_all [matchAt?_eq_matchAt?_decide]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pred/Variant036aff101ac1e52c0fa2bf5fe01a77b8345ad070b3bc7e073293490e2704be10.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6033f1d972967805d4e6e685f62c46c220478ba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
