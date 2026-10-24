# ofFnM_go_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d05e668-d0b6-4f04-dbcd-68e704ad0c0c",
  "kind": "theorem",
  "lexical_name": "ofFnM_go_succ",
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
  "slug": "offnm-go-succ--9b5f567f7a708ddae07ad7d9",
  "source": {
    "blob": "97f2789d7cef7b111cd43619a104e1ee7a689541",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b5f567f7a708ddae07ad7d98c2b57616439144a3eaba3b5ce494165bd6cd236",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d05e668-d0b6-4f04-dbcd-68e704ad0c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ofFnM_go_succ {n} [Monad m] [LawfulMonad m] {f : Fin (n + 1) → m α}
    (hi : i ≤ n := by omega) {h : xs.size = i} :
    ofFnM.go f i (by omega) xs h = (do
      let as ← ofFnM.go (fun i => f i.castSucc) i hi xs h
      let a  ← f (Fin.last n)
      pure (as.push a)) := by
  fun_induction ofFnM.go f i (by omega) xs h
  case case1 acc h' h ih =>
    if h : acc.size = n then
      unfold ofFnM.go
      rw [dif_neg (by omega)]
      have h : ¬ acc.size + 1 < n + 1 := by omega
      have : Fin.last n = ⟨acc.size, by omega⟩ := by ext; simp; omega
      simp [*]
    else
      have : acc.size + 1 ≤ n := by omega
      simp only [ih, this]
      conv => rhs; unfold ofFnM.go
      rw [dif_pos (by omega)]
      simp
  case case2 =>
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant925b7e9affa3831d2c391e85b8099cf23ca0acd05de7e0070d3823e4ffcc91b8.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97f2789d7cef7b111cd43619a104e1ee7a689541` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
