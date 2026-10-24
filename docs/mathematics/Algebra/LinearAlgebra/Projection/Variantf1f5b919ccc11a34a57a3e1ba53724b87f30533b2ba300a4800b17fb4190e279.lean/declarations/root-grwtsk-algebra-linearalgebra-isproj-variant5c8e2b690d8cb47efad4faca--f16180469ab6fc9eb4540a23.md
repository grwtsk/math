# _root_.GRWTSK.Algebra.LinearAlgebra.IsProj.Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.LinearMap.IsProj.mem_invtSubmodule_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31d5d2ef-d981-33b9-23a1-a10c12a5081d",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsProj.Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.LinearMap.IsProj.mem_invtSubmodule_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-isproj-variant5c8e2b690d8cb47efad4faca--f16180469ab6fc9eb4540a23",
  "source": {
    "blob": "f7c47056b32002f3958065d034d1e839a5ad3b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 766,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantf1f5b919ccc11a34a57a3e1ba53724b87f30533b2ba300a4800b17fb4190e279.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f16180469ab6fc9eb4540a23467b5d80c395c6044577a0c02def0e026d1f77e1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantf1f5b919ccc11a34a57a3e1ba53724b87f30533b2ba300a4800b17fb4190e279.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31d5d2ef-d981-33b9-23a1-a10c12a5081d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.IsProj.Variant5c8e2b690d8cb47efad4faca87bf784f33b8602d7784754ba4da3678796db69b.LinearMap.IsProj.mem_invtSubmodule_iff {U : Submodule R E}
    (hf : IsProj U f) : U ∈ Module.End.invtSubmodule T ↔ f ∘ₗ T ∘ₗ f = T ∘ₗ f :=
  hf.range ▸ hf.isIdempotentElem.range_mem_invtSubmodule_iff

open LinearMap in
/-- `ker f` is invariant under `T` if and only if `f ∘ₗ T ∘ₗ f = f ∘ₗ T`,
for idempotent `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantf1f5b919ccc11a34a57a3e1ba53724b87f30533b2ba300a4800b17fb4190e279.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantf1f5b919ccc11a34a57a3e1ba53724b87f30533b2ba300a4800b17fb4190e279.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c47056b32002f3958065d034d1e839a5ad3b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
