# sofLeftInverse'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d18aed0af109e41fec35c105d3e79c1c3749aebd37e7667868261a457035adf0",
  "kind": "def",
  "lexical_name": "sofLeftInverse'",
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
  "slug": "sofleftinverse--57679c5eacd1ee2d69c34ecc",
  "source": {
    "blob": "c6d2bf85f55ab7f81d3c5e478f48fd8a325279d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1000,
    "line": 989,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57679c5eacd1ee2d69c34ecc78091ff568552acb9a6ad8773f8f57d22b77252b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d18aed0af109e41fec35c105d3e79c1c3749aebd37e7667868261a457035adf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 989–1000.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sofLeftInverse' {g : S → R} {f : F} (h : Function.LeftInverse g f) : R ≃+* srange f :=
  { srangeRestrict f with
    toFun := srangeRestrict f
    invFun := fun x => g (subtype (srange f) x)
    left_inv := h
    right_inv := fun x =>
      Subtype.ext <|
        let ⟨x', hx'⟩ := NonUnitalRingHom.mem_srange.mp x.prop
        show f (g x) = x by rw [← hx', h x'] }
#align ring_equiv.sof_left_inverse' RingEquiv.sofLeftInverse'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean#L989).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6d2bf85f55ab7f81d3c5e478f48fd8a325279d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
