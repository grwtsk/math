# instHopfAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa1abdcc4f8ba08a840d369c0306f801d967c606c3fcc086ed2822874e40608b",
  "kind": "instance",
  "lexical_name": "instHopfAlgebra",
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
  "slug": "insthopfalgebra--9e1d056eec20084508e3ee12",
  "source": {
    "blob": "da4adca51d44f7eb2f91a9aa9c9c10a14b5b068e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e1d056eec20084508e3ee120df52d67d48c4b796ab5e7ad9e5da1956f0d60f5",
  "verification": {
    "reference": "docs/verification/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa1abdcc4f8ba08a840d369c0306f801d967c606c3fcc086ed2822874e40608b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instHopfAlgebra : HopfAlgebra R A[G] where
  mul_antipode_rTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, single_mul_single, -sum_antipode_mul_eq] using
      congr(lsingle (R := R) (0 : G) $(sum_antipode_mul_eq (Coalgebra.Repr.arbitrary R b)))
  mul_antipode_lTensor_comul := by
    ext a b : 2
    simpa [← (ℛ R b).eq, single_mul_single, -sum_mul_antipode_eq] using
      congr(lsingle (R := R) (0 : G) $(sum_mul_antipode_eq (Coalgebra.Repr.arbitrary R b)))

end AddMonoidAlgebra

namespace LaurentPolynomial

open Finsupp

variable (R A : Type*) [CommSemiring R] [Semiring A] [HopfAlgebra R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MonoidAlgebra/Variant9967f814a81aef9e8a3b8c2becf8496a8a105a9e8e202ed793481c5cb2706acc.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da4adca51d44f7eb2f91a9aa9c9c10a14b5b068e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
