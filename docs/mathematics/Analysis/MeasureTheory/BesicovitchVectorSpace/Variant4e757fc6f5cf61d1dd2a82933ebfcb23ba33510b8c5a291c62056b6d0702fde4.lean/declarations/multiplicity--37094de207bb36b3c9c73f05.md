# multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebd621a218c96033718ea0e4f18077500e46711b1dac7f3bf13dc0efe00625cb",
  "kind": "def",
  "lexical_name": "multiplicity",
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
  "slug": "multiplicity--37094de207bb36b3c9c73f05",
  "source": {
    "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37094de207bb36b3c9c73f0580625f479f31e0caf2620f503fa668475d0e951c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebd621a218c96033718ea0e4f18077500e46711b1dac7f3bf13dc0efe00625cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multiplicity (E : Type*) [NormedAddCommGroup E] :=
  sSup {N | ∃ s : Finset E, s.card = N ∧ (∀ c ∈ s, ‖c‖ ≤ 2) ∧ ∀ c ∈ s, ∀ d ∈ s, c ≠ d → 1 ≤ ‖c - d‖}
#align besicovitch.multiplicity Besicovitch.multiplicity

section

variable [NormedSpace ℝ E] [FiniteDimensional ℝ E]

/-- Any `1`-separated set in the ball of radius `2` has cardinality at most `5 ^ dim`. This is
useful to show that the supremum in the definition of `Besicovitch.multiplicity E` is
well behaved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0addb87793aa4a4b608addf8c967e86dc8cd00d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
