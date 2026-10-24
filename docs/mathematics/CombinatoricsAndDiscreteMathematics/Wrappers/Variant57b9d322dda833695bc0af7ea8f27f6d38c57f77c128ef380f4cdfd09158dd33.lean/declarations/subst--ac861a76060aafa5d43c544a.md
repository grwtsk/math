# subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:018ecdce76f02f0d79a733813c053b0c431c2f814039be326ec90dda2b82f519",
  "kind": "def",
  "lexical_name": "subst",
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
  "slug": "subst--ac861a76060aafa5d43c544a",
  "source": {
    "blob": "cbb50677e757e04c4b623b6cf9cbe50243cb9894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1261,
    "line": 1256,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac861a76060aafa5d43c544a2273712c7a9a7e78b6decc7dd8390a5b8ae0c50b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:018ecdce76f02f0d79a733813c053b0c431c2f814039be326ec90dda2b82f519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1256–1261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subst (σ : Nat → Expr S) : ProofWrapper S → ProofWrapper S
  | .identity => .identity
  | .positive R D => .positive (R.subst σ) (D.subst σ)
  | .negative R F => .negative (R.subst σ) (F.subst σ)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant57b9d322dda833695bc0af7ea8f27f6d38c57f77c128ef380f4cdfd09158dd33.lean#L1256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb50677e757e04c4b623b6cf9cbe50243cb9894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
