# ConcaveOn.smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1de9550-4327-3882-017f-62fdf765f88d",
  "kind": "lemma",
  "lexical_name": "ConcaveOn.smul'",
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
  "slug": "concaveon-smul--9a00a58de66e9cd251ebe7cc",
  "source": {
    "blob": "96fb5156858fa97e75178b356eb8d2beed8801f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 60,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a00a58de66e9cd251ebe7cc768dd7ee68023f73364985c076e7cec5d92567ba",
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

Occurrence: `result:b1de9550-4327-3882-017f-62fdf765f88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConcaveOn.smul' [OrderedSMul 𝕜 E] (hf : ConcaveOn 𝕜 s f) (hg : ConcaveOn 𝕜 s g)
    (hf₀ : ∀ ⦃x⦄, x ∈ s → 0 ≤ f x) (hg₀ : ∀ ⦃x⦄, x ∈ s → 0 ≤ g x) (hfg : AntivaryOn f g s) :
    ConcaveOn 𝕜 s (f • g) := by
  refine ⟨hf.1, fun x hx y hy a b ha hb hab ↦ ?_⟩
  dsimp
  refine (smul_le_smul (hf.2 hx hy ha hb hab) (hg.2 hx hy ha hb hab)
    (add_nonneg (smul_nonneg ha <| hf₀ hx) <| smul_nonneg hb <| hf₀ hy)
    (hg₀ <| hf.1 hx hy ha hb hab)).trans' ?_
  calc a • f x • g x + b • f y • g y
        = (a * (a + b)) • (f x • g x) + (b * (a + b)) • (f y • g y) := by simp_rw [hab, mul_one]
    _ = (a * a) • (f x • g x) + (b * b) • (f y • g y) + (a * b) • (f x • g x + f y • g y) := by
        simp only [mul_add, add_smul, smul_add, mul_comm _ a]; abel
    _ ≤ (a * a) • (f x • g x) + (b * b) • (f y • g y) + (a * b) • (f x • g y + f y • g x) := by
        gcongr _ + (a * b) • ?_; exact hfg.smul_add_smul_le_smul_add_smul hx hy
    _ = _ := ?_
  simp only [mul_add, add_smul, smul_add]
  rw [← smul_smul_smul_comm a, ← smul_smul_smul_comm b, ← smul_smul_smul_comm a b,
    ← smul_smul_smul_comm b b, smul_eq_mul, smul_eq_mul, smul_eq_mul, smul_eq_mul, mul_comm b a,
    add_comm ((a * b) • f x • g y), add_comm ((a * b) • f x • g y), add_add_add_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96fb5156858fa97e75178b356eb8d2beed8801f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
