# tendsto_logGammaSeq_of_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ee64cb6-09cf-af83-7502-69fd964ab272",
  "kind": "theorem",
  "lexical_name": "tendsto_logGammaSeq_of_le_one",
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
  "slug": "tendsto-loggammaseq-of-le-one--eb772751fb4c091edded3a2e",
  "source": {
    "blob": "66d2fda4d34175de21c216eed35ec14fefef3a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 302,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb772751fb4c091edded3a2e0e325c302ec4524e599ad5c666fbdc4c753a1fb5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ee64cb6-09cf-af83-7502-69fd964ab272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_logGammaSeq_of_le_one (hf_conv : ConvexOn ℝ (Ioi 0) f)
    (hf_feq : ∀ {y : ℝ}, 0 < y → f (y + 1) = f y + log y) (hx : 0 < x) (hx' : x ≤ 1) :
    Tendsto (logGammaSeq x) atTop (𝓝 <| f x - f 1) := by
  refine' tendsto_of_tendsto_of_tendsto_of_le_of_le' _ tendsto_const_nhds _ _
  -- Porting note: `show` no longer reorders goals
  pick_goal 4
  show ∀ᶠ n : ℕ in atTop, logGammaSeq x n ≤ f x - f 1
  · refine' Eventually.mp (eventually_ne_atTop 0) (eventually_of_forall fun n hn => _)
    exact le_sub_iff_add_le'.mpr (ge_logGammaSeq hf_conv (@hf_feq) hx hn)
  -- Porting note: `show` no longer reorders goals
  pick_goal 3
  show ∀ᶠ n : ℕ in atTop, f x - f 1 - x * (log (n + 1) - log n) ≤ logGammaSeq x n
  · refine' eventually_of_forall fun n => _
    rw [sub_le_iff_le_add', sub_le_iff_le_add']
    convert le_logGammaSeq hf_conv (@hf_feq) hx hx' n using 1
    ring
  · have : f x - f 1 = f x - f 1 - x * 0 := by ring
    nth_rw 2 [this]
    exact Tendsto.sub tendsto_const_nhds (tendsto_log_nat_add_one_sub_log.const_mul _)
#align real.bohr_mollerup.tendsto_log_gamma_seq_of_le_one Real.BohrMollerup.tendsto_logGammaSeq_of_le_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantdc866822f7cd5a084e20c9bad39541d770a40ae58606c79a7cae1760ca98b6bd.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d2fda4d34175de21c216eed35ec14fefef3a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
