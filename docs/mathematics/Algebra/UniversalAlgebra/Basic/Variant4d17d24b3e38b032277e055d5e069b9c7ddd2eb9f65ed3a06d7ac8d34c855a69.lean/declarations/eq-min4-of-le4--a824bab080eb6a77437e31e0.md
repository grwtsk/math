# eq_min4_of_le4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b49f058-6810-9e48-c7bc-41f6b1facecb",
  "kind": "theorem",
  "lexical_name": "eq_min4_of_le4",
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
  "slug": "eq-min4-of-le4--a824bab080eb6a77437e31e0",
  "source": {
    "blob": "4ce885e891fa920e3dd2e4106d96906b2bc1d4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 344,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a824bab080eb6a77437e31e0f6a02a1f49766e72302d5725b129d1366e2e37a5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b49f058-6810-9e48-c7bc-41f6b1facecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_min4_of_le4 {a b c d : ℚ} (h1 : d ≤ a) (h2 : d ≤ b) (h3 : d ≤ c) :
    d = min4 a b c d := le_antisymm ((le_min4_iff _ _ _ _ _).mpr ⟨h1, h2, h3, le_refl _⟩) (min4_le_all _ _ _ _).2.2.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant4d17d24b3e38b032277e055d5e069b9c7ddd2eb9f65ed3a06d7ac8d34c855a69.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ce885e891fa920e3dd2e4106d96906b2bc1d4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
