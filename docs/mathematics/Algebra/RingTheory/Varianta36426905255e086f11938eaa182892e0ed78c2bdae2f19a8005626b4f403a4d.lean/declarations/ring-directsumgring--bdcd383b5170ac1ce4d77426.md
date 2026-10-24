# Ring.directSumGRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bd98613933eb82ebb4cc86f16bcb8211e774b1859a59aaf6ca3cc345e5711ce",
  "kind": "instance",
  "lexical_name": "Ring.directSumGRing",
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
  "slug": "ring-directsumgring--bdcd383b5170ac1ce4d77426",
  "source": {
    "blob": "ca00b04d0dce572b9659f0b68292032108a9149e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 624,
    "path": "GRWTSK/Algebra/Ring/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdcd383b5170ac1ce4d77426729a847a855dc9717980f68798ddc94c7bd3c71c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bd98613933eb82ebb4cc86f16bcb8211e774b1859a59aaf6ca3cc345e5711ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Ring.directSumGRing {R : Type*} [AddMonoid ι] [Ring R] :
    DirectSum.GRing fun _ : ι => R where
  __ := Semiring.directSumGSemiring ι
  intCast z := z
  intCast_ofNat := Int.cast_natCast
  intCast_negSucc_ofNat := Int.cast_negSucc

open DirectSum

-- To check `Mul.gmul_mul` matches
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Varianta36426905255e086f11938eaa182892e0ed78c2bdae2f19a8005626b4f403a4d.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca00b04d0dce572b9659f0b68292032108a9149e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
