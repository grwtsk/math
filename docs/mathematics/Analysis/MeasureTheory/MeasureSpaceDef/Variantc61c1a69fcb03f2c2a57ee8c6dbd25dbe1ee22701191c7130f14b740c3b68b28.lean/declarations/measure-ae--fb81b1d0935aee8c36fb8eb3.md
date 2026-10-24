# Measure.ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01c7750ac96adead5fec8d69fcbeb458a3420d77f9d15ace749563d53fecf9f7",
  "kind": "def",
  "lexical_name": "Measure.ae",
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
  "slug": "measure-ae--fb81b1d0935aee8c36fb8eb3",
  "source": {
    "blob": "4f75ae805e91dcaa90a8216feb2c705896c5bdf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 364,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb81b1d0935aee8c36fb8eb38f7fa17bd75cb153a1c2a77085e5351c82a39857",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01c7750ac96adead5fec8d69fcbeb458a3420d77f9d15ace749563d53fecf9f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Measure.ae {α} {m : MeasurableSpace α} (μ : Measure α) : Filter α where
  sets := { s | μ sᶜ = 0 }
  univ_sets := by simp
  inter_sets hs ht := by simp only [compl_inter, mem_setOf_eq]; exact measure_union_null hs ht
  sets_of_superset hs hst := measure_mono_null (Set.compl_subset_compl.2 hst) hs
#align measure_theory.measure.ae MeasureTheory.Measure.ae

-- mathport name: «expr∀ᵐ ∂ , »
notation3 "∀ᵐ "(...)" ∂"μ", "r:(scoped p => Filter.Eventually p <| Measure.ae μ) => r

-- mathport name: «expr∃ᵐ ∂ , »
notation3 "∃ᵐ "(...)" ∂"μ", "r:(scoped P => Filter.Frequently P <| Measure.ae μ) => r

-- mathport name: «expr =ᵐ[ ] »
notation:50 f " =ᵐ[" μ:50 "] " g:50 => Filter.EventuallyEq (Measure.ae μ) f g

-- mathport name: «expr ≤ᵐ[ ] »
notation:50 f " ≤ᵐ[" μ:50 "] " g:50 => Filter.EventuallyLE (Measure.ae μ) f g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f75ae805e91dcaa90a8216feb2c705896c5bdf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
