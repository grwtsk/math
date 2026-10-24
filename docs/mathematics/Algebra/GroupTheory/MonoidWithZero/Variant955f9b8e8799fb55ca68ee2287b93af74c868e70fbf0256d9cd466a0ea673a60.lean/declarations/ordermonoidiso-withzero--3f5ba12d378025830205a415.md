# OrderMonoidIso.withZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:318d4e8c195e468ac09fe402fd0d273c8a934ba7647e6589b12d6ba0aa4dec66",
  "kind": "def",
  "lexical_name": "OrderMonoidIso.withZero",
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
  "slug": "ordermonoidiso-withzero--3f5ba12d378025830205a415",
  "source": {
    "blob": "1b4756e799fef1101bb14ff46e6488c76aa19e05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 289,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f5ba12d378025830205a415596fb53bd65ccd90388818c55de6259aa5d47a33",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:318d4e8c195e468ac09fe402fd0d273c8a934ba7647e6589b12d6ba0aa4dec66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OrderMonoidIso.withZero {G H : Type*}
    [Group G] [PartialOrder G] [Group H] [PartialOrder H] :
    (G ≃*o H) ≃ (WithZero G ≃*o WithZero H) where
  toFun e := ⟨e.toMulEquiv.withZero, fun {a b} ↦ by cases a <;> cases b <;> simp⟩
  invFun e := ⟨MulEquiv.withZero.symm e, fun {a b} ↦ by simp⟩
  left_inv _ := by ext; simp
  right_inv _ := by ext x; cases x <;> simp

/-- Any linearly ordered group with zero is isomorphic to adjoining `0` to the units of itself. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant955f9b8e8799fb55ca68ee2287b93af74c868e70fbf0256d9cd466a0ea673a60.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4756e799fef1101bb14ff46e6488c76aa19e05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
