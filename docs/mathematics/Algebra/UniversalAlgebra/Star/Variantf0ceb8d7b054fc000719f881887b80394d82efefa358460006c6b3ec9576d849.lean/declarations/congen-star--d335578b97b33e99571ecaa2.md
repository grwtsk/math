# conGen_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4497d53-2cb7-7439-a426-4f0bae3e0a01",
  "kind": "theorem",
  "lexical_name": "conGen_star",
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
  "slug": "congen-star--d335578b97b33e99571ecaa2",
  "source": {
    "blob": "38d66dfaad4690a5511bd8301ad9623574efefc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 40,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Star/Variantf0ceb8d7b054fc000719f881887b80394d82efefa358460006c6b3ec9576d849.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d335578b97b33e99571ecaa225d6d95b6ed2e1d483ce7fc2c82cd4d2d2148af3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Star/Variantf0ceb8d7b054fc000719f881887b80394d82efefa358460006c6b3ec9576d849.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4497d53-2cb7-7439-a426-4f0bae3e0a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conGen_star (hr : ∀ a b, r a b → r (star a) (star b)) ⦃a b : M⦄ :
    conGen r a b → conGen r (star a) (star b) := (ConGen.Rel.star hr ·)

end Mul

section Add
variable {A : Type*} [AddMonoid A] [StarAddMonoid A] {r : A → A → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Star/Variantf0ceb8d7b054fc000719f881887b80394d82efefa358460006c6b3ec9576d849.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Star/Variantf0ceb8d7b054fc000719f881887b80394d82efefa358460006c6b3ec9576d849.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38d66dfaad4690a5511bd8301ad9623574efefc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
