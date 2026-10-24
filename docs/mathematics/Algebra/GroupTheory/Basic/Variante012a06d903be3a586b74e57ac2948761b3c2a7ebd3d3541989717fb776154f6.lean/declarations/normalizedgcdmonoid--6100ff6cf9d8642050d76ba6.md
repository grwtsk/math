# NormalizedGCDMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efad3c2a99db8e576f90c6923ccd6cbde619dbf4a33dafc80b96dc096f3f41cd",
  "kind": "class",
  "lexical_name": "NormalizedGCDMonoid",
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
  "slug": "normalizedgcdmonoid--6100ff6cf9d8642050d76ba6",
  "source": {
    "blob": "b15b0f65dc1f492d95ba656e345e1f0189d72f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 305,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6100ff6cf9d8642050d76ba655a70376c7eac0f0d0c4f3b12cd234cf1e80018f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efad3c2a99db8e576f90c6923ccd6cbde619dbf4a33dafc80b96dc096f3f41cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NormalizedGCDMonoid (α : Type*) [CancelCommMonoidWithZero α] extends NormalizationMonoid α,
  GCDMonoid α where
  /-- The GCD is normalized to itself. -/
  normalize_gcd : ∀ a b, normalize (gcd a b) = gcd a b
  /-- The LCM is normalized to itself. -/
  normalize_lcm : ∀ a b, normalize (lcm a b) = lcm a b
#align normalized_gcd_monoid NormalizedGCDMonoid

export GCDMonoid (gcd lcm gcd_dvd_left gcd_dvd_right dvd_gcd lcm_zero_left lcm_zero_right)

attribute [simp] lcm_zero_left lcm_zero_right

section GCDMonoid

variable [CancelCommMonoidWithZero α]

-- Porting note: lower priority to avoid linter complaints about simp-normal form
@[simp 1100]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b15b0f65dc1f492d95ba656e345e1f0189d72f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
