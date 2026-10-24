# Int.fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:106b4a5f-5420-7e83-a1d0-d4957bf3a078",
  "kind": "theorem",
  "lexical_name": "Int.fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq",
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
  "slug": "int-fermatnumber-eq-fermatnumber-sq-sub-two-mul-fermatnumber-sub-one-sq--138bffc3ea47eea3324fe46b",
  "source": {
    "blob": "0a4cc10eaec9d5557201350faaf5ce9cbc315c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:138bffc3ea47eea3324fe46b749e1d474207226aeee39403cf7ca494f36bbf86",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:106b4a5f-5420-7e83-a1d0-d4957bf3a078`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq (n : ℕ) :
    (fermatNumber (n + 2) : ℤ)  = (fermatNumber (n + 1)) ^ 2 - 2 * (fermatNumber n - 1) ^ 2 := by
  rw [Nat.fermatNumber_eq_fermatNumber_sq_sub_two_mul_fermatNumber_sub_one_sq,
    Nat.cast_sub <| two_mul_fermatNumber_sub_one_sq_le_fermatNumber_sq n]
  simp only [fermatNumber, push_cast, add_tsub_cancel_right]

namespace Nat

open Finset
/--
**Goldbach's theorem** : no two distinct Fermat numbers share a common factor greater than one.

From a letter to Euler, see page 37 in [juskevic2022].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4cc10eaec9d5557201350faaf5ce9cbc315c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
