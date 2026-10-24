# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5f9c63393109da5a346b01b7018230068b3af447915a04f6a573c7c9f7ca7c9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a54f3ee6c65181ce03b5c585",
  "source": {
    "blob": "72590f46d23f22cad3edb7cf263453c819ebd8f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 438,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a54f3ee6c65181ce03b5c5856c69363b5028166f5e713147c832d4b739d8867d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5f9c63393109da5a346b01b7018230068b3af447915a04f6a573c7c9f7ca7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AddGroup (HahnSeries Γ R) :=
  { inferInstanceAs (AddMonoid (HahnSeries Γ R)) with
    neg := fun x =>
      { coeff := fun a => -x.coeff a
        isPwo_support' := by
          rw [Function.support_neg]
          exact x.isPwo_support }
    add_left_neg := fun x => by
      ext
      apply add_left_neg }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HahnSeries/Variant02fb79849f47c55ff10fa886591ff224bdfc31adf659f04683fe691e528cc878.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72590f46d23f22cad3edb7cf263453c819ebd8f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
