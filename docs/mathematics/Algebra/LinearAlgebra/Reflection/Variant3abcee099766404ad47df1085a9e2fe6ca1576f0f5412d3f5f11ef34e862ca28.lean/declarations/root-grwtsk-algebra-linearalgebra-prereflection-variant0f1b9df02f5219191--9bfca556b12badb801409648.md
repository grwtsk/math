# _root_.GRWTSK.Algebra.LinearAlgebra.PreReflection.Variant0f1b9df02f521919141c63eda31063b9a0ef4fe450faf4f86352c2203fe905c3.Submodule.mem_invtSubmodule_reflection_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27fc1003-0e4b-9c2a-e532-41fb674c3a99",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.PreReflection.Variant0f1b9df02f521919141c63eda31063b9a0ef4fe450faf4f86352c2203fe905c3.Submodule.mem_invtSubmodule_reflection_of_mem",
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
  "slug": "root-grwtsk-algebra-linearalgebra-prereflection-variant0f1b9df02f5219191--9bfca556b12badb801409648",
  "source": {
    "blob": "884c32c24663e523356ed851a8747163a98cb019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 141,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bfca556b12badb8014096488ceb38679542ba5dcb6812478402c14bd0de6bd5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27fc1003-0e4b-9c2a-e532-41fb674c3a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.PreReflection.Variant0f1b9df02f521919141c63eda31063b9a0ef4fe450faf4f86352c2203fe905c3.Submodule.mem_invtSubmodule_reflection_of_mem (h : f x = 2)
    (p : Submodule R M) (hx : x ∈ p) :
    p ∈ End.invtSubmodule (reflection h) := by
  suffices ∀ y ∈ p, reflection h y ∈ p from
    (End.mem_invtSubmodule _).mpr fun y hy ↦ by simpa using this y hy
  intro y hy
  simpa only [reflection_apply, p.sub_mem_iff_right hy] using p.smul_mem (f y) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variant3abcee099766404ad47df1085a9e2fe6ca1576f0f5412d3f5f11ef34e862ca28.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `884c32c24663e523356ed851a8747163a98cb019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
