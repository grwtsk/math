# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ad4f28ec3d1ae1c3d04a61dde8ba63a027796b584178bbedbcd03a12c9031bd",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--ed33588b9bd2acf86679c38e",
  "source": {
    "blob": "87779bcf1a5dec6f799df147bfe9894ca9a5bb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 138,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed33588b9bd2acf86679c38e8396b60340fb036ea9f683743d4a948b135d7fff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ad4f28ec3d1ae1c3d04a61dde8ba63a027796b584178bbedbcd03a12c9031bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [Monoid M] [Monoid N] [MulAction M N] [SMulCommClass M N N] [IsScalarTower M N N] :
    MulAction Mˣ Nˣ := Units.mulAction'

section MulDistribMulAction
variable {M N : Type*} [Monoid M] [Monoid N] [MulDistribMulAction M N]

/-- Note this has different defeqs than `Units.mulAction'`, but doesn't create a diamond
with it in non-degenerate situations. Indeed, to get a diamond on `MulDistribMulAction G Mˣ`,
we would need both instances to fire. But `Units.mulAction'` assumes `SMulCommClass G M M`,
i.e. `∀ (g : G) (m₁ m₂ : M), g • (m₁ * m₂) = m₁ * g • m₂`), while
`Units.instMulDistribMulActionRight` assumes `MulDistribMulAction G M`,
i.e. `∀ (g : G) (m₁ m₂ : M), g • (m₁ * m₂) = g • m₁ * g • m₂`.
In particular, if `M` is cancellative, then we obtain `∀ (g : G) (m : M), g • m = m`,
i.e. the action is trivial!

This however does create a (propeq) diamond for `MulDistribMulAction (ConjAct Mˣ) Mˣ` with
`ConjAct.unitsMulDistribMulAction` and `ConjAct.instMulDistribMulAction`. Indeed, if we go down
one way then `u • v := ⟨ofConjAct u * v * ofConjAct u⁻¹, ofConjAct u * v⁻¹ * ofConjAct u⁻¹, _, _⟩`,
while the other way is
`u • v := ⟨ofConjAct u * v * ofConjAct u⁻¹, ofConjAct u * (v⁻¹ * ofConjAct u⁻¹), _, _⟩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant9be515709d6e4f0cc69796fe6f74f48a1916a2bfb971f04fdd0182bca6aed25f.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87779bcf1a5dec6f799df147bfe9894ca9a5bb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
