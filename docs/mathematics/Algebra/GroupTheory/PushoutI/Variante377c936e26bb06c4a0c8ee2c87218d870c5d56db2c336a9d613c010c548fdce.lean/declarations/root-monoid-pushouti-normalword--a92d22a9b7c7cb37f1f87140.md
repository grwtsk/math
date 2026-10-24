# _root_.Monoid.PushoutI.NormalWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58bf98a8fe9a4af29c0daad38b85cecbd38fad3ea6effc0e2c4e122b03cd38b3",
  "kind": "structure",
  "lexical_name": "_root_.Monoid.PushoutI.NormalWord",
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
  "slug": "root-monoid-pushouti-normalword--a92d22a9b7c7cb37f1f87140",
  "source": {
    "blob": "96a570a1640fb994f6279ddb82dd6fcb57f5bfc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 243,
    "path": "GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a92d22a9b7c7cb37f1f871409809d038c08ebc4046e7fd08585b32d01e132958",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58bf98a8fe9a4af29c0daad38b85cecbd38fad3ea6effc0e2c4e122b03cd38b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure _root_.Monoid.PushoutI.NormalWord (d : Transversal φ) extends CoprodI.Word G where
  /-- Every `NormalWord` is the product of an element of the base group and a word made up
  of letters each of which is in the transversal. `head` is that element of the base group. -/
  head : H
  /-- All letter in the word are in the transversal. -/
  normalized : ∀ i g, ⟨i, g⟩ ∈ toList → g ∈ d.set i

/--
A `Pair d i` is a word in the coproduct, `Coprod G`, the `tail`, and an element of the group `G i`,
the `head`. The first letter of the `tail` must not be an element of `G i`.
Note that the `head` may be `1` Every letter in the `tail` must be in the transversal given by `d`.
Similar to `Monoid.CoprodI.Pair` except every letter must be in the transversal
(not including the head letter). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/PushoutI/Variante377c936e26bb06c4a0c8ee2c87218d870c5d56db2c336a9d613c010c548fdce.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96a570a1640fb994f6279ddb82dd6fcb57f5bfc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
