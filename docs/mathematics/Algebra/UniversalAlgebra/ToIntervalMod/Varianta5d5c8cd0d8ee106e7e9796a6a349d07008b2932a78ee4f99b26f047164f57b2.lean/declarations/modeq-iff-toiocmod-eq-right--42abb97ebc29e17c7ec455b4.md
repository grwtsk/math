# modEq_iff_toIocMod_eq_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef6df2cf-c385-2a9c-b737-6aaa58caca3a",
  "kind": "theorem",
  "lexical_name": "modEq_iff_toIocMod_eq_right",
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
  "slug": "modeq-iff-toiocmod-eq-right--42abb97ebc29e17c7ec455b4",
  "source": {
    "blob": "96c6bd96073bd2c13fa717ab32a9f9383640d5aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 610,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42abb97ebc29e17c7ec455b41f83ae9d414bef8c7ac3c7f2469fa27fe2f5582a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef6df2cf-c385-2a9c-b737-6aaa58caca3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modEq_iff_toIocMod_eq_right : a ≡ b [PMOD p] ↔ toIocMod hp a b = a + p := by
  refine modEq_iff_eq_add_zsmul.trans ⟨?_, fun h => ⟨toIocDiv hp a b + 1, ?_⟩⟩
  · rintro ⟨z, rfl⟩
    rw [toIocMod_add_zsmul, toIocMod_apply_left]
  · rwa [add_one_zsmul, add_left_comm, ← sub_eq_iff_eq_add']

alias ⟨ModEq.toIcoMod_eq_left, _⟩ := modEq_iff_toIcoMod_eq_left

alias ⟨ModEq.toIcoMod_eq_right, _⟩ := modEq_iff_toIocMod_eq_right

variable (a b)

open List in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96c6bd96073bd2c13fa717ab32a9f9383640d5aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
