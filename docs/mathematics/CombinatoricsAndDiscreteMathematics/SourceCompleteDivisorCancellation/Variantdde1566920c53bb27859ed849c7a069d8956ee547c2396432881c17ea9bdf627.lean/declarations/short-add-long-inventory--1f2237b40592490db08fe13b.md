# short_add_long_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:308228a4-c38c-8319-6f6f-d2457eafdddc",
  "kind": "theorem",
  "lexical_name": "short_add_long_inventory",
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
  "slug": "short-add-long-inventory--1f2237b40592490db08fe13b",
  "source": {
    "blob": "fe882cc548958752ef933614521658adf6ec3204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantdde1566920c53bb27859ed849c7a069d8956ee547c2396432881c17ea9bdf627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2237b40592490db08fe13b73f7ee4452b7b3ee8256590a5e928ce77b58364b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantdde1566920c53bb27859ed849c7a069d8956ee547c2396432881c17ea9bdf627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:308228a4-c38c-8319-6f6f-d2457eafdddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem short_add_long_inventory (A : ℝ) (hA : 1 ≤ A) (f : ℕ → ℝ) :
    (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), f m) +
      (∑ m ∈ longInventory A, f m) = ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), f m := by
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hd : Disjoint (Finset.Icc 1 (vaughanCutoff A)) (longInventory A) := by
    apply Finset.disjoint_left.mpr
    intro m hm hn
    have hb := Finset.mem_Icc.mp hm
    have hc := Finset.mem_Ioc.mp hn
    omega
  have hu : Finset.Icc 1 (vaughanCutoff A) ∪ longInventory A =
      Finset.Icc 1 (sourceKernelCutoff A) := by
    ext m
    simp only [longInventory, Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  rw [← hu, Finset.sum_union hd]

/-- Exact joint cancellation of complete short multiples, divisible diagonal and baseline. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantdde1566920c53bb27859ed849c7a069d8956ee547c2396432881c17ea9bdf627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variantdde1566920c53bb27859ed849c7a069d8956ee547c2396432881c17ea9bdf627.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe882cc548958752ef933614521658adf6ec3204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
