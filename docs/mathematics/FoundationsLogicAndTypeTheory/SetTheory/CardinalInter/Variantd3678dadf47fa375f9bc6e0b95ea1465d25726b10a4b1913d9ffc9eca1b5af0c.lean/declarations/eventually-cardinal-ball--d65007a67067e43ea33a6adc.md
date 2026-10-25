# eventually_cardinal_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a89c46b-a3f5-4559-50e3-0a714b16b891",
  "kind": "theorem",
  "lexical_name": "eventually_cardinal_ball",
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
  "slug": "eventually-cardinal-ball--d65007a67067e43ea33a6adc",
  "source": {
    "blob": "ce4af0e653de32b0b7b2bfabd3ec2aa3d7e06c01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d65007a67067e43ea33a6adc7083be8cd1c335e89bf6a93e2533c3540dbf7057",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a89c46b-a3f5-4559-50e3-0a714b16b891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_cardinal_ball {S : Set ι} (hS : #S < c)
    {p : α → ∀ i ∈ S, Prop} :
    (∀ᶠ x in l, ∀ i hi, p x i hi) ↔ ∀ i hi, ∀ᶠ x in l, p x i hi := by
  simp only [Filter.Eventually, ofPred_forall]
  exact cardinal_bInter_mem hS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantd3678dadf47fa375f9bc6e0b95ea1465d25726b10a4b1913d9ffc9eca1b5af0c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4af0e653de32b0b7b2bfabd3ec2aa3d7e06c01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
