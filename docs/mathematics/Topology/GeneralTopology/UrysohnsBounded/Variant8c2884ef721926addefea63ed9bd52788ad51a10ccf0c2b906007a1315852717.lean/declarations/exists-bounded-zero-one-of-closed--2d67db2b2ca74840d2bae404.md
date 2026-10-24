# exists_bounded_zero_one_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5be5913ea53188697c6013142f9d6a33cbbb0db5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62adb7c8-689c-1939-3433-ba01b1aec5a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93e44927-9b4f-4b82-25e8-076baf1e8a7a",
  "kind": "theorem",
  "lexical_name": "exists_bounded_zero_one_of_closed",
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
  "slug": "exists-bounded-zero-one-of-closed--2d67db2b2ca74840d2bae404",
  "source": {
    "blob": "5be5913ea53188697c6013142f9d6a33cbbb0db5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d67db2b2ca74840d2bae4046d8f2def224a5622fd6ca6a1586d127681073183",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93e44927-9b4f-4b82-25e8-076baf1e8a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_bounded_zero_one_of_closed {X : Type*} [TopologicalSpace X] [NormalSpace X]
    {s t : Set X} (hs : IsClosed s) (ht : IsClosed t) (hd : Disjoint s t) :
    ∃ f : X →ᵇ ℝ, EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 :=
  let ⟨f, hfs, hft, hf⟩ := exists_continuous_zero_one_of_isClosed hs ht hd
  ⟨⟨f, 1, fun _ _ => Real.dist_le_of_mem_Icc_01 (hf _) (hf _)⟩, hfs, hft, hf⟩

/-- Urysohn's lemma: if `s` and `t` are two disjoint closed sets in a normal topological space `X`,
and `a ≤ b` are two real numbers, then there exists a continuous function `f : X → ℝ` such that

* `f` equals `a` on `s`;
* `f` equals `b` on `t`;
* `a ≤ f x ≤ b` for all `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant8c2884ef721926addefea63ed9bd52788ad51a10ccf0c2b906007a1315852717.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be5913ea53188697c6013142f9d6a33cbbb0db5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
