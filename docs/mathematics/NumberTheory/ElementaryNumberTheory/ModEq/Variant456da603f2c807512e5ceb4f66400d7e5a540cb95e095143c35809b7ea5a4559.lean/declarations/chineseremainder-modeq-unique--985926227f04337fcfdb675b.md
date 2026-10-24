# chineseRemainder_modEq_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:054b8d4d-89d8-3720-1884-53f94ea0f161",
  "kind": "theorem",
  "lexical_name": "chineseRemainder_modEq_unique",
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
  "slug": "chineseremainder-modeq-unique--985926227f04337fcfdb675b",
  "source": {
    "blob": "e2eeca0e81620eec3c350508c2c1d4187eb28cad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 346,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:985926227f04337fcfdb675ba30b02284032b895667efc6149a8668d838ec6ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:054b8d4d-89d8-3720-1884-53f94ea0f161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chineseRemainder_modEq_unique (co : n.Coprime m) {a b z}
    (hzan : z ≡ a [MOD n]) (hzbm : z ≡ b [MOD m]) : z ≡ chineseRemainder co a b [MOD n*m] := by
  simpa [Nat.Coprime.lcm_eq_mul co] using
    mod_lcm (hzan.trans ((chineseRemainder co a b).prop.1).symm)
      (hzbm.trans ((chineseRemainder co a b).prop.2).symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ModEq/Variant456da603f2c807512e5ceb4f66400d7e5a540cb95e095143c35809b7ea5a4559.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2eeca0e81620eec3c350508c2c1d4187eb28cad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
