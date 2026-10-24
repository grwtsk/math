# Sylow.smul_eq_iff_mem_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e3e2049-87a4-d7f8-96e5-0a9391a67e14",
  "kind": "theorem",
  "lexical_name": "Sylow.smul_eq_iff_mem_normalizer",
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
  "slug": "sylow-smul-eq-iff-mem-normalizer--1b74d686794b4f56c38492c8",
  "source": {
    "blob": "50a5f53b4fff7dd361a60d09d5b11fe11c0c7802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 267,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b74d686794b4f56c38492c8d1b570bdf65215610f00601586cd6baecda31aea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e3e2049-87a4-d7f8-96e5-0a9391a67e14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sylow.smul_eq_iff_mem_normalizer {g : G} {P : Sylow p G} :
    g • P = P ↔ g ∈ (P : Subgroup G).normalizer := by
  rw [eq_comm, SetLike.ext_iff, ← inv_mem_iff (G := G) (H := normalizer P.toSubgroup),
      mem_normalizer_iff, inv_inv]
  exact
    forall_congr' fun h =>
      iff_congr Iff.rfl
        ⟨fun ⟨a, b, c⟩ => c ▸ by simpa [mul_assoc] using b,
          fun hh => ⟨(MulAut.conj g)⁻¹ h, hh, MulAut.apply_inv_self G (MulAut.conj g) h⟩⟩
#align sylow.smul_eq_iff_mem_normalizer Sylow.smul_eq_iff_mem_normalizer

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant998f757738277cfc80477384c2f34be389cf2755045221ba23234ad3a852d107.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a5f53b4fff7dd361a60d09d5b11fe11c0c7802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
