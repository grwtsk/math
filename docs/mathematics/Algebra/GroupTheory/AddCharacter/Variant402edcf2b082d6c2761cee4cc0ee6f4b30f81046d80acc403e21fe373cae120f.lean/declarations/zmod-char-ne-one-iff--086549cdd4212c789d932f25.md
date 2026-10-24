# zmod_char_ne_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b54db6c-a222-73fc-f950-5b7a169874b8",
  "kind": "theorem",
  "lexical_name": "zmod_char_ne_one_iff",
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
  "slug": "zmod-char-ne-one-iff--086549cdd4212c789d932f25",
  "source": {
    "blob": "662110ff9188a0f32e66e48f25cb84054e8f30cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:086549cdd4212c789d932f25b01d810f90aaa62d8d167dbbcbd50d8cce4c9b2f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b54db6c-a222-73fc-f950-5b7a169874b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zmod_char_ne_one_iff (n : ℕ) [NeZero n] (ψ : AddChar (ZMod n) C) : ψ ≠ 1 ↔ ψ 1 ≠ 1 := by
  rw [ne_one_iff]
  refine ⟨?_, fun h => ⟨_, h⟩⟩
  contrapose!
  rintro h₁ a
  have ha₁ : a = a.val • (1 : ZMod ↑n) := by
    rw [nsmul_eq_mul, mul_one]; exact (ZMod.natCast_zmod_val a).symm
  rw [ha₁, map_nsmul_eq_pow, h₁, one_pow]

/-- A primitive additive character on `ZMod n` takes the value `1` only at `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662110ff9188a0f32e66e48f25cb84054e8f30cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
