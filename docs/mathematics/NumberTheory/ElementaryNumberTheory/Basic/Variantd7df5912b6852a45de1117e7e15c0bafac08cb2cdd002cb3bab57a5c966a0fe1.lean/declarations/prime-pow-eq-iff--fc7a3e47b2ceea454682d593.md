# Prime.pow_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d57a9e0c-e2f5-f129-c036-7e4c9bf25b4f",
  "kind": "theorem",
  "lexical_name": "Prime.pow_eq_iff",
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
  "slug": "prime-pow-eq-iff--fc7a3e47b2ceea454682d593",
  "source": {
    "blob": "8ba57cfd458820ca15ce92e94c018394dc81a2db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 184,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc7a3e47b2ceea454682d593cfc559db00953e9d9da625b9fb97900fd42bc309",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d57a9e0c-e2f5-f129-c036-7e4c9bf25b4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prime.pow_eq_iff {p a k : ℕ} (hp : p.Prime) : a ^ k = p ↔ a = p ∧ k = 1 := by
  refine ⟨fun h => ?_, fun h => by rw [h.1, h.2, pow_one]⟩
  rw [← h] at hp
  rw [← h, hp.eq_one_of_pow, eq_self_iff_true, _root_.and_true, pow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd7df5912b6852a45de1117e7e15c0bafac08cb2cdd002cb3bab57a5c966a0fe1.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ba57cfd458820ca15ce92e94c018394dc81a2db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
