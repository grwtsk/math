# card_support_trinomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e65114b8-71d2-45e8-e3c5-352c0138913b",
  "kind": "theorem",
  "lexical_name": "card_support_trinomial",
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
  "slug": "card-support-trinomial--d1b7eb202b8baca77047711f",
  "source": {
    "blob": "a19e23d32f7ef17246b92cedccb98f39d3893033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1b7eb202b8baca77047711fc4a05c324437c269612cefe34baa00b5ccb4d39f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e65114b8-71d2-45e8-e3c5-352c0138913b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_support_trinomial {k m n : ℕ} (hkm : k < m) (hmn : m < n) {x y z : R} (hx : x ≠ 0)
    (hy : y ≠ 0) (hz : z ≠ 0) : card (support (C x * X ^ k + C y * X ^ m + C z * X ^ n)) = 3 := by
  rw [support_trinomial hkm hmn hx hy hz,
    card_insert_of_not_mem
      (mt mem_insert.mp (not_or_of_not hkm.ne (mt mem_singleton.mp (hkm.trans hmn).ne))),
    card_insert_of_not_mem (mt mem_singleton.mp hmn.ne), card_singleton]
#align polynomial.card_support_trinomial Polynomial.card_support_trinomial

end Fewnomials

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Coeff/Variant8a1264844e986f7b293bfb348213678fb9b32981672ebaa146f80d363128e065.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a19e23d32f7ef17246b92cedccb98f39d3893033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
