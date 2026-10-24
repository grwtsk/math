# Squarefree.isRadical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdb05cff-11a9-49bb-caea-5cd1055dc0e6",
  "kind": "theorem",
  "lexical_name": "Squarefree.isRadical",
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
  "slug": "squarefree-isradical--1b2c225faf476ead88c2490b",
  "source": {
    "blob": "301e7cfa89d2ddf767387719433257d197a9ea24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 205,
    "path": "GRWTSK/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b2c225faf476ead88c2490b56eb65303314c376588f868d8da136754778a3e2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdb05cff-11a9-49bb-caea-5cd1055dc0e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Squarefree.isRadical {x : R} (hx : Squarefree x) : IsRadical x :=
  (isRadical_iff_pow_one_lt 2 one_lt_two).2 fun y hy =>
    And.right <|
      (dvd_gcd_iff x x y).1
        (by
          by_cases gcd x y = 0
          · rw [h]
            apply dvd_zero
          replace hy := ((dvd_gcd_iff x x _).2 ⟨dvd_rfl, hy⟩).trans gcd_pow_right_dvd_pow_gcd
          obtain ⟨z, hz⟩ := gcd_dvd_left x y
          nth_rw 1 [hz] at hy ⊢
          rw [pow_two, mul_dvd_mul_iff_left h] at hy
          obtain ⟨w, hw⟩ := hy
          exact (hx z ⟨w, by rwa [mul_right_comm, ← hw]⟩).mul_right_dvd.2 dvd_rfl)
#align squarefree.is_radical Squarefree.isRadical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Squarefree/Variant5abdca4ee698853ecd5f485a66c527162d791a8af9b4337be9477344ebb48644.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `301e7cfa89d2ddf767387719433257d197a9ea24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
