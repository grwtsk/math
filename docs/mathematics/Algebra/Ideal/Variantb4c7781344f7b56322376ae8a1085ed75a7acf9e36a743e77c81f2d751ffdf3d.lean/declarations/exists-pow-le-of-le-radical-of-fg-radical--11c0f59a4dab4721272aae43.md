# exists_pow_le_of_le_radical_of_fg_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e222f62-cada-4c0d-f778-030c8f4121c1",
  "kind": "theorem",
  "lexical_name": "exists_pow_le_of_le_radical_of_fg_radical",
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
  "slug": "exists-pow-le-of-le-radical-of-fg-radical--11c0f59a4dab4721272aae43",
  "source": {
    "blob": "67af4384819f4a4dc9d9a0863288b15ce4ffb3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c0f59a4dab4721272aae43f5f935e6ef891ed1cadaa265f5586834ddcfa2c8",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e222f62-cada-4c0d-f778-030c8f4121c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_le_of_le_radical_of_fg_radical {R : Type*} [CommSemiring R] {I J : Ideal R}
    (hIJ : I ≤ J.radical) (hJ : J.radical.FG) :
    ∃ k : ℕ, I ^ k ≤ J := by
  obtain ⟨k, hk⟩ := J.exists_radical_pow_le_of_fg hJ
  use k
  calc
    I ^ k ≤ J.radical ^ k := Ideal.pow_right_mono hIJ _
    _ ≤ J := hk

@[deprecated (since := "2024-10-24")]
alias exists_pow_le_of_le_radical_of_fG := exists_pow_le_of_le_radical_of_fg_radical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variantb4c7781344f7b56322376ae8a1085ed75a7acf9e36a743e77c81f2d751ffdf3d.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67af4384819f4a4dc9d9a0863288b15ce4ffb3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
