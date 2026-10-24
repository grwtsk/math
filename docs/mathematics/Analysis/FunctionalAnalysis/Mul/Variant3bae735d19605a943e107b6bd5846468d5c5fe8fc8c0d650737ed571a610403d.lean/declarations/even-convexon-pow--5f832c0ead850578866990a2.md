# Even.convexOn_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e5c0e91-ca5b-8973-51ca-14e4a29e14e9",
  "kind": "lemma",
  "lexical_name": "Even.convexOn_pow",
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
  "slug": "even-convexon-pow--5f832c0ead850578866990a2",
  "source": {
    "blob": "96fb5156858fa97e75178b356eb8d2beed8801f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 164,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f832c0ead850578866990a2d03ced6a80db7e4eb4c5c638c5ea4003506e635f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e5c0e91-ca5b-8973-51ca-14e4a29e14e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Even.convexOn_pow {n : ℕ} (hn : Even n) : ConvexOn 𝕜 univ fun x : 𝕜 ↦ x ^ n := by
  obtain ⟨n, rfl⟩ := hn
  simp_rw [← two_mul, pow_mul]
  refine ConvexOn.pow ⟨convex_univ, fun x _ y _ a b ha hb hab ↦ sub_nonneg.1 ?_⟩
    (fun _ _ ↦ by positivity) _
  calc
    (0 : 𝕜) ≤ (a * b) * (x - y) ^ 2 := by positivity
    _ = _ := by obtain rfl := eq_sub_of_add_eq hab; simp only [smul_eq_mul]; ring

end LinearOrderedCommRing

section LinearOrderedField
variable [Field 𝕜] [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜]

open Int in
/-- `x^m`, `m : ℤ` is convex on `(0, +∞)` for all `m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96fb5156858fa97e75178b356eb8d2beed8801f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
