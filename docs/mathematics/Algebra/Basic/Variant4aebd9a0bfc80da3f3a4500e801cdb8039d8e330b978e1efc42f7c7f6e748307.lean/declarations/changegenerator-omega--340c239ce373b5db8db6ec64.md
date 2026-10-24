# changeGenerator_omega

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96a3eb42-9ff5-8169-6591-1e5239457280",
  "kind": "theorem",
  "lexical_name": "changeGenerator_omega",
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
  "slug": "changegenerator-omega--340c239ce373b5db8db6ec64",
  "source": {
    "blob": "e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 461,
    "path": "GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340c239ce373b5db8db6ec649455cc762473c34f8f78f79ab14413fe9bad18d9",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96a3eb42-9ff5-8169-6591-1e5239457280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeGenerator_omega (a b u k : R) {a' b' : R} (ha : a' = u ^ 2 * a - u * b * k - k ^ 2)
    (hb : b' = u * b + 2 * k) :
    changeGenerator a b u k ha hb ω = u • ω + algebraMap R (QuadraticAlgebra R a b) k := by
  ext <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4aebd9a0bfc80da3f3a4500e801cdb8039d8e330b978e1efc42f7c7f6e748307.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1bef7eb6c7263eca25d62ccdaddf6499ef9c87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
