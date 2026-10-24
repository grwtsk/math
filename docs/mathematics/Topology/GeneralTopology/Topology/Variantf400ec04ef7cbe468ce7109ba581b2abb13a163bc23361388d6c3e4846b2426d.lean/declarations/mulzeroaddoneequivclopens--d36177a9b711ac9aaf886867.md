# mulZeroAddOneEquivClopens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c2b1fb4e803c93c88974e2be242c990f60715b79f77336396e02a554a16c5c6",
  "kind": "def",
  "lexical_name": "mulZeroAddOneEquivClopens",
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
  "slug": "mulzeroaddoneequivclopens--d36177a9b711ac9aaf886867",
  "source": {
    "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1127,
    "line": 1111,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d36177a9b711ac9aaf88686732922f44758244b4a2cd51c9343bcff8d0440262",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c2b1fb4e803c93c88974e2be242c990f60715b79f77336396e02a554a16c5c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1111–1127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulZeroAddOneEquivClopens :
    {e : R × R // e.1 * e.2 = 0 ∧ e.1 + e.2 = 1} ≃o Clopens (PrimeSpectrum R) where
  toEquiv := .ofBijective
    (fun e ↦ ⟨basicOpen e.1.1, isClopen_iff_mul_add.mpr ⟨_, _, e.2.1, e.2.2, rfl⟩⟩) <| by
      refine ⟨fun ⟨x, hx⟩ ⟨y, hy⟩ eq ↦ mul_eq_zero_add_eq_one_ext_left ?_, fun s ↦ ?_⟩
      · exact basicOpen_injOn_isIdempotentElem (IsIdempotentElem.of_mul_add hx.1 hx.2).1
          (IsIdempotentElem.of_mul_add hy.1 hy.2).1 <| SetLike.ext' (congr_arg (·.1) eq)
      · have ⟨e, f, mul, add, eq⟩ := isClopen_iff_mul_add.mp s.2
        exact ⟨⟨(e, f), mul, add⟩, SetLike.ext' eq.symm⟩
  map_rel_iff' {a b} := show basicOpen _ ≤ basicOpen _ ↔ _ by
    rw [← inf_eq_left, ← basicOpen_mul]
    refine ⟨fun h ↦ ?_, (by rw [·])⟩
    rw [← inf_eq_left]
    have := (IsIdempotentElem.of_mul_add a.2.1 a.2.2).1
    exact mul_eq_zero_add_eq_one_ext_left (basicOpen_injOn_isIdempotentElem
      (this.mul (IsIdempotentElem.of_mul_add b.2.1 b.2.2).1) this h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean#L1111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8595a4eca910e154d0983fef668e2cc977aa1a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
