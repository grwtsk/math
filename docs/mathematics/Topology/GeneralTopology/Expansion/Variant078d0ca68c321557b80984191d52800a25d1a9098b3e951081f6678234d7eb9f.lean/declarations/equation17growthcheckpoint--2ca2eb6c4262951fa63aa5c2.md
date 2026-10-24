# Equation17GrowthCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1296655dd5416ae05e72ecf5414273615285281ab21f65a8945e44f3df63c5ad",
  "kind": "def",
  "lexical_name": "Equation17GrowthCheckpoint",
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
  "slug": "equation17growthcheckpoint--2ca2eb6c4262951fa63aa5c2",
  "source": {
    "blob": "f7bd209c79a14f60617ffde7bfe9a494f24c62c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 578,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ca2eb6c4262951fa63aa5c2e18d4d57ab30cc7df7a33c50ab7f265397f04dd7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1296655dd5416ae05e72ecf5414273615285281ab21f65a8945e44f3df63c5ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Equation17GrowthCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A →
    Summable
      (fun o : ZeroOccurrence ↦
        expandedSummand A (shiftedValue o)) ∧
    (weightedSource A : ℂ) =
      ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o)) ∧
  (∀ B : ℝ, 1 ≤ B →
    HasSumUniformlyOn
      (fun o : ZeroOccurrence ↦
        fun A : ℝ ↦ expandedSummand A (shiftedValue o))
      (fun A ↦ ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o))
      (Icc (1 : ℝ) B)) ∧
  (∀ B : ℝ, 1 ≤ B →
    ContinuousOn
      (fun A : ℝ ↦ (weightedSource A : ℂ))
      (Icc (1 : ℝ) B)) ∧
  (∀ A : ℝ, ((weightedSource A : ℂ)).im = 0) ∧
  (0 ≤ growthConstant ∧
    ∀ A : ℝ, 1 ≤ A →
      ‖(weightedSource A : ℂ)‖ ≤
        growthConstant * (1 + A ^ 8) * Real.exp A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7bd209c79a14f60617ffde7bfe9a494f24c62c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
