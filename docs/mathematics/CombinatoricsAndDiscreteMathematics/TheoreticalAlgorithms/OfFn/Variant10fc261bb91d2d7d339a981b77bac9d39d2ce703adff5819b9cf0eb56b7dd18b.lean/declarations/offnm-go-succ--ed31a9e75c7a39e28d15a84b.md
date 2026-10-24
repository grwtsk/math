# ofFnM_go_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33402360ad856b615dc2e4fdd79a1d48b7d36e31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ba6b390-0952-48da-7e58-d05fa21280c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:692e96e8-d61c-57d1-63cc-9c37bf2ed710",
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
  "slug": "offnm-go-succ--ed31a9e75c7a39e28d15a84b",
  "source": {
    "blob": "33402360ad856b615dc2e4fdd79a1d48b7d36e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed31a9e75c7a39e28d15a84b5e7d3d969e3af492e7a29af6745e1b1a742a288c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:692e96e8-d61c-57d1-63cc-9c37bf2ed710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–114.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfFn/Variant10fc261bb91d2d7d339a981b77bac9d39d2ce703adff5819b9cf0eb56b7dd18b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33402360ad856b615dc2e4fdd79a1d48b7d36e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
