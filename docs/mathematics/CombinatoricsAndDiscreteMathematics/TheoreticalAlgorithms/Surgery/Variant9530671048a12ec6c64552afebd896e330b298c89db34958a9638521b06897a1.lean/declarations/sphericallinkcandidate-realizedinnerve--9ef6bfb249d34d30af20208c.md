# SphericalLinkCandidate.RealizedInNerve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44d47ee6a76a441ac657f1c24302aaf694be0aecfaffc4039450fb862e51f520",
  "kind": "def",
  "lexical_name": "SphericalLinkCandidate.RealizedInNerve",
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
  "slug": "sphericallinkcandidate-realizedinnerve--9ef6bfb249d34d30af20208c",
  "source": {
    "blob": "40a1015b0537339a38b745ae9011256544a1656a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 406,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant9530671048a12ec6c64552afebd896e330b298c89db34958a9638521b06897a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ef6bfb249d34d30af20208c77b2d629e19d113183fad9fa02e438b55fd72ed3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant9530671048a12ec6c64552afebd896e330b298c89db34958a9638521b06897a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44d47ee6a76a441ac657f1c24302aaf694be0aecfaffc4039450fb862e51f520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SphericalLinkCandidate.RealizedInNerve {N : ℕ}
    (link : SphericalLinkCandidate N)
    (nerve : FiniteInteractionNerve N) : Prop :=
  link.cluster ⊆ nerve.activeAtoms ∧
    link.edges ⊆ nerve.simplices ∧
    link.faces ⊆ nerve.simplices

/-- Exact one-to-many surgery accounting.  The universal identity is
algebraic; the potential inequality is a separate analytic obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant9530671048a12ec6c64552afebd896e330b298c89db34958a9638521b06897a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant9530671048a12ec6c64552afebd896e330b298c89db34958a9638521b06897a1.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a1015b0537339a38b745ae9011256544a1656a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
