# χ₄_nat_eq_if_mod_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41553fab-5a8d-d72f-30cd-0a1fb291dc81",
  "kind": "theorem",
  "lexical_name": "χ₄_nat_eq_if_mod_four",
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
  "slug": "nat-eq-if-mod-four--96e8330037167bbad7dd6e46",
  "source": {
    "blob": "892f9b1db966c85191a4dbf6b65a5cd7cb8c89fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 82,
    "path": "GRWTSK/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e8330037167bbad7dd6e4698c863c1b3955432caa1943e2d53611e9b861dbc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41553fab-5a8d-d72f-30cd-0a1fb291dc81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem χ₄_nat_eq_if_mod_four (n : ℕ) :
    χ₄ n = if n % 2 = 0 then 0 else if n % 4 = 1 then 1 else -1 := by
  exact_mod_cast χ₄_int_eq_if_mod_four n
#align zmod.χ₄_nat_eq_if_mod_four ZMod.χ₄_nat_eq_if_mod_four

/-- Alternative description of `χ₄ n` for odd `n : ℕ` in terms of powers of `-1` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `892f9b1db966c85191a4dbf6b65a5cd7cb8c89fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
