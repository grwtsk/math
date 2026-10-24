# computeDistance_eq_prefixFunctionRecurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ed6a63-d640-38c1-af57-a55bad5541bb",
  "kind": "theorem",
  "lexical_name": "computeDistance_eq_prefixFunctionRecurrence",
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
  "slug": "computedistance-eq-prefixfunctionrecurrence--6ef71aa4e8da14324eb72605",
  "source": {
    "blob": "89f4a354aa0abd34832b82c03875f86f703da6f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 310,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ef71aa4e8da14324eb726053b97b7c5743684c0c9dbf43460a8f7d806a072da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ed6a63-d640-38c1-af57-a55bad5541bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem computeDistance_eq_prefixFunctionRecurrence {s : Slice} (i : Nat)
    (hi : i < s.copy.toByteArray.size) {patByte : UInt8}
    (hpat : patByte = s.copy.toByteArray[i])
    (table : Array Nat) {ht} (ht' : IsTable s.copy.toByteArray table) {h guess hg hg'} :
    (buildTable.computeDistance s patByte table ht h guess hg').1 =
      prefixFunctionRecurrence s.copy.toByteArray i (by omega) guess hg := by
  cases hpat
  fun_induction prefixFunctionRecurrence with
  | case1 =>
    rw [buildTable.computeDistance, if_pos]
    simp [getUTF8Byte_eq_getUTF8Byte_copy, String.getUTF8Byte, *]
  | case2 =>
    rw [buildTable.computeDistance, if_neg, dif_pos]
    · rfl
    · simp [getUTF8Byte_eq_getUTF8Byte_copy, String.getUTF8Byte, *]
  | case3 g hg h₁ h₂ h₃ ih =>
    rw [buildTable.computeDistance, if_neg, dif_neg h₂]
    · simp only [ht'.eq_prefixFunction, ih]
    · simp [getUTF8Byte_eq_getUTF8Byte_copy, String.getUTF8Byte, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f4a354aa0abd34832b82c03875f86f703da6f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
