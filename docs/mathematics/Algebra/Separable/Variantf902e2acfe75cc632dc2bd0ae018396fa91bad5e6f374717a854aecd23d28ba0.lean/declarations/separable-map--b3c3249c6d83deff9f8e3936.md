# Separable.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:957c7a7b-cd17-9618-1975-6dac75f1d255",
  "kind": "theorem",
  "lexical_name": "Separable.map",
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
  "slug": "separable-map--b3c3249c6d83deff9f8e3936",
  "source": {
    "blob": "0fdc29ffb771e8b8edb1455c8cc00abfe3a10e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 126,
    "path": "GRWTSK/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c3249c6d83deff9f8e3936001c4ad02a058ec505fe9b7710faa1061edd8835",
  "verification": {
    "reference": "docs/verification/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:957c7a7b-cd17-9618-1975-6dac75f1d255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Separable.map {p : R[X]} (h : p.Separable) {f : R →+* S} : (p.map f).Separable :=
  let ⟨a, b, H⟩ := h
  ⟨a.map f, b.map f, by
    rw [derivative_map, ← Polynomial.map_mul, ← Polynomial.map_mul, ← Polynomial.map_add, H,
      Polynomial.map_one]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Separable/Variantf902e2acfe75cc632dc2bd0ae018396fa91bad5e6f374717a854aecd23d28ba0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fdc29ffb771e8b8edb1455c8cc00abfe3a10e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
