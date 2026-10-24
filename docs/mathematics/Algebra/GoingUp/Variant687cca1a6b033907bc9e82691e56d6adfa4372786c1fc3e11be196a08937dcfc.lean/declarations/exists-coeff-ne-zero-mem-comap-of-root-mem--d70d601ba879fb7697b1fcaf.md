# exists_coeff_ne_zero_mem_comap_of_root_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4624ae6-f4f6-471a-3d2a-437215256b69",
  "kind": "theorem",
  "lexical_name": "exists_coeff_ne_zero_mem_comap_of_root_mem",
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
  "slug": "exists-coeff-ne-zero-mem-comap-of-root-mem--d70d601ba879fb7697b1fcaf",
  "source": {
    "blob": "c60f1dcc7ff97877c3f0d91529924042425f5cee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d70d601ba879fb7697b1fcaf84ddf21d50efed2e8673f8de678886867c2521f3",
  "verification": {
    "reference": "docs/verification/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4624ae6-f4f6-471a-3d2a-437215256b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_coeff_ne_zero_mem_comap_of_root_mem [IsDomain S] {r : S} (r_ne_zero : r ≠ 0)
    (hr : r ∈ I) {p : R[X]} :
    p ≠ 0 → p.eval₂ f r = 0 → ∃ i, p.coeff i ≠ 0 ∧ p.coeff i ∈ I.comap f :=
  exists_coeff_ne_zero_mem_comap_of_non_zero_divisor_root_mem
    (fun {_} h => Or.resolve_right (mul_eq_zero.mp h) r_ne_zero) hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingUp/Variant687cca1a6b033907bc9e82691e56d6adfa4372786c1fc3e11be196a08937dcfc.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60f1dcc7ff97877c3f0d91529924042425f5cee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
