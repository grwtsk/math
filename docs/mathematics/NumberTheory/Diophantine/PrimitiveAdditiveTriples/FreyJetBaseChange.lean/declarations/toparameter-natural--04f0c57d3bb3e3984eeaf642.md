# toParameter_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b4a2abd-0859-7268-bffb-22f2936bf364",
  "kind": "theorem",
  "lexical_name": "toParameter_natural",
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
  "slug": "toparameter-natural--04f0c57d3bb3e3984eeaf642",
  "source": {
    "blob": "f78edd61fdd95b122aad933b561f9532aa97d1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 183,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04f0c57d3bb3e3984eeaf642e95f72f81bf2a350ef82f19d5991dd2d9aef90c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b4a2abd-0859-7268-bffb-22f2936bf364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toParameter_natural (f : R →+* S) (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (u : Jet a b r N) :
    toParameter (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N (jetMap f a b r N u) =
      parameterMap f N (toParameter a b r j hr hj N u) := by
  apply (ringEquiv (f a) (f b) (f r) (f j)
    (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N).symm.injective
  change fromParameter (f a) (f b) (f r) N
      (toParameter (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N (jetMap f a b r N u)) =
    fromParameter (f a) (f b) (f r) N
      (parameterMap f N (toParameter a b r j hr hj N u))
  rw [show fromParameter (f a) (f b) (f r) N
      (toParameter (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N (jetMap f a b r N u)) =
      jetMap f a b r N u from DFunLike.congr_fun
        (from_to (f a) (f b) (f r) (f j)
          (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N) _]
  have h := DFunLike.congr_fun (fromParameter_natural f a b r N)
    (toParameter a b r j hr hj N u)
  simpa only [RingHom.comp_apply,
    show fromParameter a b r N (toParameter a b r j hr hj N u) = u from
      DFunLike.congr_fun (from_to a b r j hr hj N) u] using h

/-- On the smooth marked branch, injective coefficients give injective finite transport.
No such conclusion is asserted for a noninjective residue specialization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f78edd61fdd95b122aad933b561f9532aa97d1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
