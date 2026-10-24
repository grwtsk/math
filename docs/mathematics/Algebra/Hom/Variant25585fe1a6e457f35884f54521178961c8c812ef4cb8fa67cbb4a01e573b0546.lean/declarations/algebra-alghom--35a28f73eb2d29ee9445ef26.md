# Algebra.algHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f61d60dda92b6b00c6982f6eac8379e340e6063a034ae4cd7c7c938f865aaeef",
  "kind": "def",
  "lexical_name": "Algebra.algHom",
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
  "slug": "algebra-alghom--35a28f73eb2d29ee9445ef26",
  "source": {
    "blob": "d359e4a198bfd5f7af258f1953439e8b9a13811f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 48,
    "path": "GRWTSK/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35a28f73eb2d29ee9445ef26aff1282bd19567953485b7077799fa4bead466d9",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f61d60dda92b6b00c6982f6eac8379e340e6063a034ae4cd7c7c938f865aaeef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Algebra.algHom (R A B : Type*)
    [CommSemiring R] [CommSemiring A] [Semiring B] [Algebra R A] [Algebra R B]
    [Algebra A B] [IsScalarTower R A B] :
    A →ₐ[R] B where
  toRingHom := algebraMap A B
  commutes' r := by simpa [Algebra.smul_def] using smul_assoc r (1 : A) (1 : B)

/-- `AlgHomClass F R A B` asserts `F` is a type of bundled algebra homomorphisms
from `A` to `B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d359e4a198bfd5f7af258f1953439e8b9a13811f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
