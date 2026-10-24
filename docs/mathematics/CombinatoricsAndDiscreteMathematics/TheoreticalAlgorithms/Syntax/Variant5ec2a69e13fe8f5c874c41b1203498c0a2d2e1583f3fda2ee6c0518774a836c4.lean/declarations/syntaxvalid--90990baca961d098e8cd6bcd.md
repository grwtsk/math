# SyntaxValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17574e84252db126dd872e082323fae23731918b59dd8b79c25aad65e0f23f0f",
  "kind": "def",
  "lexical_name": "SyntaxValid",
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
  "slug": "syntaxvalid--90990baca961d098e8cd6bcd",
  "source": {
    "blob": "3bb6483f84a208c207e3f835ee3ccfb7f4161971",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant5ec2a69e13fe8f5c874c41b1203498c0a2d2e1583f3fda2ee6c0518774a836c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90990baca961d098e8cd6bcd503ce436b3f80fc734d0859cc83254340138e3e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant5ec2a69e13fe8f5c874c41b1203498c0a2d2e1583f3fda2ee6c0518774a836c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17574e84252db126dd872e082323fae23731918b59dd8b79c25aad65e0f23f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SyntaxValid (snapshot : CheckedSnapshot) (certificate : SyntaxCertificate) : Prop :=
  certificate.snapshot = snapshot.value ∧
  certificate.nodes ≠ [] ∧
  certificate.nodes.map SyntaxNode.id =
    (List.range certificate.nodes.length).map NodeId.mk ∧
  certificate.root.value + 1 = certificate.nodes.length ∧
  certificate.nodes.length ≤ snapshot.value.limits.maxNodes ∧
  syntaxWork certificate ≤ snapshot.value.limits.maxWork ∧
  (∀ node ∈ certificate.nodes, NodeValid snapshot.value certificate.nodes node) ∧
  (∀ node ∈ certificate.nodes,
    (certificate.nodes.flatMap SyntaxNode.children).count node.id =
      if node.id = certificate.root then 0 else 1) ∧
  (∀ node ∈ certificate.nodes,
    node.id ∈ reachableNodes certificate.nodes certificate.root) ∧
  (∀ occurrence ∈ snapshot.value.occurrences,
    (certificate.nodes.flatMap SyntaxNode.localOccurrences).count occurrence.id = 1) ∧
  (nodeAt certificate.nodes certificate.root).spanBegin = 0 ∧
  (nodeAt certificate.nodes certificate.root).spanEnd = snapshot.value.occurrences.length ∧
  (nodeAt certificate.nodes certificate.root).yielded =
    snapshot.value.occurrences.map Occurrence.id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant5ec2a69e13fe8f5c874c41b1203498c0a2d2e1583f3fda2ee6c0518774a836c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant5ec2a69e13fe8f5c874c41b1203498c0a2d2e1583f3fda2ee6c0518774a836c4.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bb6483f84a208c207e3f835ee3ccfb7f4161971` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
