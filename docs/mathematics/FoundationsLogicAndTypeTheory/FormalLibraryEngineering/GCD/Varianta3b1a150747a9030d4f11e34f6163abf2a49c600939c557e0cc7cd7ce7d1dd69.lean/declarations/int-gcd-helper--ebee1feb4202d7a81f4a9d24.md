# int_gcd_helper'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd25a1d8-1f79-83ae-89ca-25fce0d21382",
  "kind": "theorem",
  "lexical_name": "int_gcd_helper'",
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
  "slug": "int-gcd-helper--ebee1feb4202d7a81f4a9d24",
  "source": {
    "blob": "004b838781ed0b2b53a89aca20fb1795a291f922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebee1feb4202d7a81f4a9d24f41b19a4fe91017529989e231af1b0b4c117d210",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd25a1d8-1f79-83ae-89ca-25fce0d21382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_gcd_helper' {d : ℕ} {x y : ℤ} (a b : ℤ) (h₁ : (d : ℤ) ∣ x) (h₂ : (d : ℤ) ∣ y)
    (h₃ : x * a + y * b = d) : Int.gcd x y = d := by
  refine Nat.dvd_antisymm ?_ (Int.natCast_dvd_natCast.1 (Int.dvd_coe_gcd h₁ h₂))
  rw [← Int.natCast_dvd_natCast, ← h₃]
  apply dvd_add
  · exact (Int.gcd_dvd_left ..).mul_right _
  · exact (Int.gcd_dvd_right ..).mul_right _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `004b838781ed0b2b53a89aca20fb1795a291f922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
