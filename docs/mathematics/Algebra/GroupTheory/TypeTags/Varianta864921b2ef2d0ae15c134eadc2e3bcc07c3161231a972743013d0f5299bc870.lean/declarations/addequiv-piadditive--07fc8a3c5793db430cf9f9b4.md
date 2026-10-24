# AddEquiv.piAdditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edff4cdd7f5f3f6177e6a5863cc8af0573ef1937faa2f488155911ce3749be64",
  "kind": "def",
  "lexical_name": "AddEquiv.piAdditive",
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
  "slug": "addequiv-piadditive--07fc8a3c5793db430cf9f9b4",
  "source": {
    "blob": "f6d0560328a120f98dcd68329d146060c9ba502e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 160,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07fc8a3c5793db430cf9f9b4d5e430ed1c57ad864fc5d7214e4e99c8ecc30943",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edff4cdd7f5f3f6177e6a5863cc8af0573ef1937faa2f488155911ce3749be64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddEquiv.piAdditive (K : ι → Type*) [∀ i, Mul (K i)] :
    Additive (∀ i : ι, K i) ≃+ (∀ i : ι, Additive (K i)) where
  toFun x := fun i ↦ Additive.ofMul <| x.toMul i
  invFun x := Additive.ofMul fun i ↦ (x i).toMul
  map_add' _ _ := rfl

variable (ι) (G) in
/-- `Additive (ι → G)` is equivalent to `ι → Additive G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Varianta864921b2ef2d0ae15c134eadc2e3bcc07c3161231a972743013d0f5299bc870.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6d0560328a120f98dcd68329d146060c9ba502e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
