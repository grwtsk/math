# natCast_eq_one_iff_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb2f5eed-9a77-b9da-7563-49806a1957a1",
  "kind": "theorem",
  "lexical_name": "natCast_eq_one_iff_odd",
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
  "slug": "natcast-eq-one-iff-odd--0a84f7d22c62d8bcc1d0e0b5",
  "source": {
    "blob": "c466e569a7d820ea4628e3262dfca74a72dd43b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 782,
    "line": 778,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a84f7d22c62d8bcc1d0e0b51c30ad61304b4b67ef3fbcc1372bb9cfc1eaaff8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb2f5eed-9a77-b9da-7563-49806a1957a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 778–782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_eq_one_iff_odd {n : ℕ} : (n : ZMod 2) = 1 ↔ Odd n :=
  mod_cast intCast_eq_one_iff_odd (n := n)

alias ⟨_, _root_.Odd.natCast_zmod_two⟩ := natCast_eq_one_iff_odd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantcec73e2d60a8e9e9298b24a70b7db6af5e08cd7bc31293a58bacff67327c1a55.lean#L778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c466e569a7d820ea4628e3262dfca74a72dd43b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
