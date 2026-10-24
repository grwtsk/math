# Rat.normalize.reduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9722e2373e6d49b7ec3e635a6125af895c9940b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:279834c2-ed31-3ce1-66e1-0451b5083cb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:441016e3-f7f3-b6b7-1407-6ad2c23a20d5",
  "kind": "theorem",
  "lexical_name": "Rat.normalize.reduced",
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
  "slug": "rat-normalize-reduced--cca46b18f1f032d4280c88ab",
  "source": {
    "blob": "9722e2373e6d49b7ec3e635a6125af895c9940b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 83,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cca46b18f1f032d4280c88abd0037308128e5c603ad8069bcc72e0523c34b2b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:441016e3-f7f3-b6b7-1407-6ad2c23a20d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rat.normalize.reduced {num : Int} {den g : Nat} (den_nz : den ≠ 0)
    (e : g = num.natAbs.gcd den) : (num / g).natAbs.Coprime (den / g) :=
  have : Int.natAbs (num / ↑g) = num.natAbs / g := by
    rw [Int.natAbs_ediv_of_dvd (dvd_num e), Int.natAbs_natCast]
  this ▸ e ▸ Nat.coprime_div_gcd_div_gcd (Nat.gcd_pos_of_pos_right _ (Nat.pos_of_ne_zero den_nz))

/--
Construct a normalized `Rat` from a numerator and nonzero denominator.
This is a "smart constructor" that divides the numerator and denominator by
the gcd to ensure that the resulting rational number is normalized.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant30b77ea0918aa986f6617bef4ad99a8d79cd538a714c9f05134bcb6a5e490cc8.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9722e2373e6d49b7ec3e635a6125af895c9940b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
