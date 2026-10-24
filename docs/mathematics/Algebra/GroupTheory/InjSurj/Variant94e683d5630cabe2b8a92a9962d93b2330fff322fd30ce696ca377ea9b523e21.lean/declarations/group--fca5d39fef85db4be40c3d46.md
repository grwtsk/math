# group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67696085c8f652c0774531620eb8d7c074611e6bde40ada2c8c10242f0756a1e",
  "kind": "abbrev",
  "lexical_name": "group",
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
  "slug": "group--fca5d39fef85db4be40c3d46",
  "source": {
    "blob": "94bc7fdeaa445e5c7334268f718554ca40814d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 470,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fca5d39fef85db4be40c3d460f1b9344997f87f866cc21dff7d45621e570b2ae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67696085c8f652c0774531620eb8d7c074611e6bde40ada2c8c10242f0756a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev group [Group M₁] (f : M₁ → M₂) (hf : Surjective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (inv : ∀ x, f x⁻¹ = (f x)⁻¹)
    (div : ∀ x y, f (x / y) = f x / f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (zpow : ∀ (x) (n : ℤ), f (x ^ n) = f x ^ n) : Group M₂ :=
  { hf.divInvMonoid f one mul inv div npow zpow with
    inv_mul_cancel := hf.forall.2 fun x => by rw [← inv, ← mul, inv_mul_cancel, one] }

/-- A type endowed with `0`, `1`, `+` is an additive group with one,
if it admits a surjective map that preserves `0`, `1`, and `+` to an additive group with one.
See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant94e683d5630cabe2b8a92a9962d93b2330fff322fd30ce696ca377ea9b523e21.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94bc7fdeaa445e5c7334268f718554ca40814d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
