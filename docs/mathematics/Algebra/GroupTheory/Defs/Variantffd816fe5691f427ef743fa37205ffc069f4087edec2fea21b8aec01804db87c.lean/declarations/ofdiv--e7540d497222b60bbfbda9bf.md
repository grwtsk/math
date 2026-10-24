# ofDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82ed2cccf113e2648f1d6b98d610f9cf00efd0519b2f0fa0189e442c34228dee",
  "kind": "def",
  "lexical_name": "ofDiv",
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
  "slug": "ofdiv--e7540d497222b60bbfbda9bf",
  "source": {
    "blob": "c6c621dcda390ad437212eb1495cf32d24d3f0b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 458,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7540d497222b60bbfbda9bf4420315055e590256a965f1ec9d67abd627a3e5c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82ed2cccf113e2648f1d6b98d610f9cf00efd0519b2f0fa0189e442c34228dee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofDiv (s : Set G) (hsn : s.Nonempty) (hs : ∀ᵉ (x ∈ s) (y ∈ s), x * y⁻¹ ∈ s) :
    Subgroup G :=
  have one_mem : (1 : G) ∈ s := by
    let ⟨x, hx⟩ := hsn
    simpa using hs x hx x hx
  have inv_mem : ∀ x, x ∈ s → x⁻¹ ∈ s := fun x hx => by simpa using hs 1 one_mem x hx
  { carrier := s
    one_mem' := one_mem
    inv_mem' := inv_mem _
    mul_mem' := fun hx hy => by simpa using hs _ hx _ (inv_mem _ hy) }

/-- A subgroup of a group inherits a multiplication. -/
@[to_additive "An `AddSubgroup` of an `AddGroup` inherits an addition."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantffd816fe5691f427ef743fa37205ffc069f4087edec2fea21b8aec01804db87c.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c621dcda390ad437212eb1495cf32d24d3f0b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
