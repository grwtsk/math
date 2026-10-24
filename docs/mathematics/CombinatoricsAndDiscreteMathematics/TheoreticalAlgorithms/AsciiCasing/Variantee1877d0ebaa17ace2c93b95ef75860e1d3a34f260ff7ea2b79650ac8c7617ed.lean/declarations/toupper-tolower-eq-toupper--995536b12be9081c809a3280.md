# toUpper_toLower_eq_toUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d59bdc5-69c9-8b2b-87fb-a71382a95a43",
  "kind": "theorem",
  "lexical_name": "toUpper_toLower_eq_toUpper",
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
  "slug": "toupper-tolower-eq-toupper--995536b12be9081c809a3280",
  "source": {
    "blob": "61bd2d4a6bb415ea26adef61fced13345254bc96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:995536b12be9081c809a32807ab94e96d672b88e03a8f40421c14440a1384fd7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d59bdc5-69c9-8b2b-87fb-a71382a95a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[simp] theorem toUpper_toLower_eq_toUpper (c : Char) : c.toLower.toUpper = c.toUpper := by
  by_cases hu : c.isUpper
  · have hl : ¬ c.isLower := not_isLower_of_isUpper hu
    have hl' : c.toLower.isLower := by simp [isAlpha, hu]
    have hv : (c.toNat + 32).isValidChar := by
      simp only [isUpper, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
        UInt32.reduceToNat, toNat_val, Bool.decide_and, Bool.and_eq_true, decide_eq_true_eq,
        isLower, not_and, Nat.not_le] at hu hl
      omega
    rw [toUpper_eq_of_isLower hl', toLower_eq_of_isUpper hu, toUpper_eq_of_not_isLower hl,
      toNat_ofNat, if_pos hv, Nat.add_sub_cancel, ofNat_toNat]
  · rw [toLower_eq_of_not_isUpper hu]

/-- Case folding for ASCII characters only.

Alphabetic ASCII characters are mapped to their lowercase form, all other characters are left
unchanged. This agrees with the Unicode case folding algorithm for ASCII characters.

```
#eval caseFoldAsciiOnly 'A' == 'a'
#eval caseFoldAsciiOnly 'a' == 'a'
#eval caseFoldAsciiOnly 'À' == 'À'
#eval caseFoldAsciiOnly 'à' == 'à'
#eval caseFoldAsciiOnly '$' == '$'
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61bd2d4a6bb415ea26adef61fced13345254bc96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
