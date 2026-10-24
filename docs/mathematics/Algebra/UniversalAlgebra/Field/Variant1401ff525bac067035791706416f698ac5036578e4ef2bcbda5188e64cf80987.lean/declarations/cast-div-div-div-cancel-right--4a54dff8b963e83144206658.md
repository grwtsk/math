# cast_div_div_div_cancel_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe08531c-d0a2-cd03-e909-44af1fbbdc59",
  "kind": "lemma",
  "lexical_name": "cast_div_div_div_cancel_right",
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
  "slug": "cast-div-div-div-cancel-right--4a54dff8b963e83144206658",
  "source": {
    "blob": "165e8a6cf62810310ea7258bc80ca80aa37b0a9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a54dff8b963e83144206658bcbb38f729c5e617c195e82028f7cc5ad5c8fd32",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe08531c-d0a2-cd03-e909-44af1fbbdc59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cast_div_div_div_cancel_right (hn : d ∣ n) (hm : d ∣ m) :
    (↑(m / d) : K) / (↑(n / d) : K) = (m : K) / n := by
  rcases eq_or_ne d 0 with (rfl | hd); · simp [Nat.zero_dvd.1 hm]
  replace hd : (d : K) ≠ 0 := by norm_cast
  rw [cast_div hm, cast_div hn, div_div_div_cancel_right₀ hd] <;> exact hd

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Field/Variant1401ff525bac067035791706416f698ac5036578e4ef2bcbda5188e64cf80987.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `165e8a6cf62810310ea7258bc80ca80aa37b0a9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
