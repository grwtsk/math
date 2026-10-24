# WfDvdMonoid.max_power_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d996dc35-105d-1caf-ca49-eb40d390a733",
  "kind": "theorem",
  "lexical_name": "WfDvdMonoid.max_power_factor",
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
  "slug": "wfdvdmonoid-max-power-factor--5672ecfbfb56ef407ad7d823",
  "source": {
    "blob": "967ce8a91fcc0362ea62ffdce57dcbadd84075b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 41,
    "path": "GRWTSK/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5672ecfbfb56ef407ad7d823085fba051052c0d9519156c6836d0c6659b9bcac",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d996dc35-105d-1caf-ca49-eb40d390a733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WfDvdMonoid.max_power_factor [CommMonoidWithZero α] [WfDvdMonoid α] {a₀ x : α}
    (h : a₀ ≠ 0) (hx : Irreducible x) : ∃ (n : ℕ) (a : α), ¬x ∣ a ∧ a₀ = x ^ n * a :=
  max_power_factor' h hx.not_isUnit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variant86715b15d9289674a0e8cae1bf40255f7be19a7d6ab72ceae8c780bae55b8112.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `967ce8a91fcc0362ea62ffdce57dcbadd84075b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
