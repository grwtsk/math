# String.utf8EncodeChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9eba9317cc3c9d65bdd41fcafd3397a6a90ffab198c01c09bd09e0c4e137213f",
  "kind": "def",
  "lexical_name": "String.utf8EncodeChar",
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
  "slug": "string-utf8encodechar--42a542504f5dd1bdd384d1c5",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3521,
    "line": 3491,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42a542504f5dd1bdd384d1c54aaf572c394bfcf0570908d56c20c582d94f5268",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9eba9317cc3c9d65bdd41fcafd3397a6a90ffab198c01c09bd09e0c4e137213f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3491–3521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def String.utf8EncodeChar (c : Char) : List UInt8 :=
  let v := c.val.toNat
  ite (LE.le v 0x7f)
    (List.cons (UInt8.ofNat v) List.nil)
    (ite (LE.le v 0x7ff)
      (List.cons
        (UInt8.ofNat (HAdd.hAdd (HMod.hMod (HDiv.hDiv v 64) 0x20) 0xc0))
        (List.cons
          (UInt8.ofNat (HAdd.hAdd (HMod.hMod v 0x40) 0x80))
          List.nil))
      (ite (LE.le v 0xffff)
        (List.cons
          (UInt8.ofNat (HAdd.hAdd (HMod.hMod (HDiv.hDiv v 4096) 0x10) 0xe0))
          (List.cons
            (UInt8.ofNat (HAdd.hAdd (HMod.hMod (HDiv.hDiv v 64) 0x40) 0x80))
            (List.cons
              (UInt8.ofNat (HAdd.hAdd (HMod.hMod v 0x40) 0x80))
              List.nil)))
        (List.cons
          (UInt8.ofNat (HAdd.hAdd (HMod.hMod (HDiv.hDiv v 262144) 0x08) 0xf0))
          (List.cons
            (UInt8.ofNat (HAdd.hAdd (HMod.hMod (HDiv.hDiv v 4096) 0x40) 0x80))
            (List.cons
              (UInt8.ofNat (HAdd.hAdd (HMod.hMod (HDiv.hDiv v 64) 0x40) 0x80))
              (List.cons
                (UInt8.ofNat (HAdd.hAdd (HMod.hMod v 0x40) 0x80))
                List.nil))))))

/-- Encode a list of characters (Unicode scalar value) in UTF-8. This is an inefficient model
implementation. Use `List.asString` instead. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L3491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
