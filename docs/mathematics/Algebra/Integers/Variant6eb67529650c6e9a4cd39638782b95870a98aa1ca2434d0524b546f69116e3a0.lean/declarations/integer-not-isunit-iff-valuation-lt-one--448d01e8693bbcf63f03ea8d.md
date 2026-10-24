# Integer.not_isUnit_iff_valuation_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70ffc910-7ef4-6739-9728-0d0886387deb",
  "kind": "theorem",
  "lexical_name": "Integer.not_isUnit_iff_valuation_lt_one",
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
  "slug": "integer-not-isunit-iff-valuation-lt-one--448d01e8693bbcf63f03ea8d",
  "source": {
    "blob": "d17018bddc214c68f7feb409987001479c421f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 253,
    "path": "GRWTSK/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:448d01e8693bbcf63f03ea8d04d44cf05300547190103eddbcdb4ca886e7320e",
  "verification": {
    "reference": "docs/verification/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ffc910-7ef4-6739-9728-0d0886387deb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integer.not_isUnit_iff_valuation_lt_one {x : v.integer} : ¬IsUnit x ↔ v x < 1 := by
  rw [← not_le, not_iff_not, isUnit_iff_valuation_eq_one (F := F) (Γ₀ := Γ₀),
    le_antisymm_iff]
  exacts [and_iff_right x.2, integer.integers v]


end Field

end Valuation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d17018bddc214c68f7feb409987001479c421f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
