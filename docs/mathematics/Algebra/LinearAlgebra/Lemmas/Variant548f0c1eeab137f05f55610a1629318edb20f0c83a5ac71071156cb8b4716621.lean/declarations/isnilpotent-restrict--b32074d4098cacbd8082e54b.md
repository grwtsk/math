# isNilpotent.restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d141eb8-7cae-8009-fb85-25f98e0ff85e",
  "kind": "lemma",
  "lexical_name": "isNilpotent.restrict",
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
  "slug": "isnilpotent-restrict--b32074d4098cacbd8082e54b",
  "source": {
    "blob": "4321f4dc9829dcf0bab933761c83f55eb218fec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b32074d4098cacbd8082e54bce3a9637a7b595265491b1a4e6cdaa6c555bcfa6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d141eb8-7cae-8009-fb85-25f98e0ff85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent.restrict
    {f : M →ₗ[R] M} {p : Submodule R M} (hf : MapsTo f p p) (hnil : IsNilpotent f) :
    IsNilpotent (f.restrict hf) := by
  obtain ⟨n, hn⟩ := hnil
  exact ⟨n, LinearMap.ext fun m ↦ by simp only [Module.End.pow_restrict n, hn,
    LinearMap.restrict_apply, LinearMap.zero_apply]; rfl⟩

end

variable {M : Type v} [Ring R] [AddCommGroup M] [Module R M]
variable {f : Module.End R M} {p : Submodule R M} (hp : p ≤ p.comap f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant548f0c1eeab137f05f55610a1629318edb20f0c83a5ac71071156cb8b4716621.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4321f4dc9829dcf0bab933761c83f55eb218fec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
