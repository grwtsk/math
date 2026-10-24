# complexMoebius_LSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90209769-39dd-aa08-12ba-8d64a5cc4f59",
  "kind": "theorem",
  "lexical_name": "complexMoebius_LSeries",
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
  "slug": "complexmoebius-lseries--23dad3a8c03a7cb6cdc14dd9",
  "source": {
    "blob": "ee5f8f7b558558efc67fb6d3ed965de56892e501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23dad3a8c03a7cb6cdc14dd9540c863134ec36b3cea7fb5c5dab949600c61b5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90209769-39dd-aa08-12ba-8d64a5cc4f59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexMoebius_LSeries {s : ℂ} (hs : 1 < s.re) :
    LSeries complexMoebius s = 1 / riemannZeta s := by
  have hz := riemannZeta_ne_zero_of_one_lt_re hs
  have hm := LSeries_one_mul_Lseries_moebius hs
  rw [LSeries_one_eq_riemannZeta hs] at hm
  apply (eq_div_iff hz).2
  simpa only [funext complexMoebius_eq, mul_comm] using hm

/-- The zero coefficient is retained before converting the closed prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee5f8f7b558558efc67fb6d3ed965de56892e501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
