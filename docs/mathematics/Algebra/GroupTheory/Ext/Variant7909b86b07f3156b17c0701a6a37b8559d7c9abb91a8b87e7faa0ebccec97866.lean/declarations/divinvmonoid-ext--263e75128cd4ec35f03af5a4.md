# DivInvMonoid.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce226160-fd42-39e7-e7b3-70474c0637dc",
  "kind": "theorem",
  "lexical_name": "DivInvMonoid.ext",
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
  "slug": "divinvmonoid-ext--263e75128cd4ec35f03af5a4",
  "source": {
    "blob": "fe4dc64b2b95ffcb53cfdacab38c4717ee8631bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 129,
    "path": "GRWTSK/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:263e75128cd4ec35f03af5a45123d8171df79661384930b615d076bd62a27f5b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce226160-fd42-39e7-e7b3-70474c0637dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DivInvMonoid.ext {M : Type*} ⦃m₁ m₂ : DivInvMonoid M⦄ (h_mul : m₁.mul = m₂.mul)
  (h_inv : m₁.inv = m₂.inv) : m₁ = m₂ := by
  have h_mon := Monoid.ext h_mul
  have h₁ : m₁.one = m₂.one := congr_arg (·.one) h_mon
  let f : @MonoidHom M M m₁.toMulOneClass m₂.toMulOneClass :=
    @MonoidHom.mk _ _ (_) _ (@OneHom.mk _ _ (_) _ id h₁)
      (fun x y => congr_fun (congr_fun h_mul x) y)
  have : m₁.npow = m₂.npow := congr_arg (·.npow) h_mon
  have : m₁.zpow = m₂.zpow := by
    ext m x
    exact @MonoidHom.map_zpow' M M m₁ m₂ f (congr_fun h_inv) x m
  have : m₁.div = m₂.div := by
    ext a b
    exact @map_div' _ _
      (@MonoidHom _ _ (_) _) (id _) _
      (@MonoidHom.monoidHomClass _ _ (_) _) f (congr_fun h_inv) a b
  rcases m₁ with @⟨_, ⟨_⟩, ⟨_⟩⟩
  rcases m₂ with @⟨_, ⟨_⟩, ⟨_⟩⟩
  congr
#align div_inv_monoid.ext DivInvMonoid.ext
#align sub_neg_monoid.ext SubNegMonoid.ext

@[to_additive (attr := ext)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ext/Variant7909b86b07f3156b17c0701a6a37b8559d7c9abb91a8b87e7faa0ebccec97866.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe4dc64b2b95ffcb53cfdacab38c4717ee8631bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
