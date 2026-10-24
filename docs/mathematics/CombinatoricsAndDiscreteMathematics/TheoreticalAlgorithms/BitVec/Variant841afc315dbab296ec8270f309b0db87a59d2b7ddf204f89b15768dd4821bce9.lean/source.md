# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Bitvec.Variant841afc315dbab296ec8270f309b0db87a59d2b7ddf204f89b15768dd4821bce9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bfee7d63d13e30e6dc5408925799341d8f46e6a` · SHA-256 `97d51a26897cfa0439884596c54fb2732cba096b2afb6524b7677c3238eb5c37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GuardExpr.Variant250e0861b111dbd0d45991747bc9e7f5bbf85a73853acd59960784e8c5e5f17a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"250e0861b111dbd0d45991747bc9e7f5bbf85a73853acd59960784e8c5e5f17a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GuardExpr.Variant250e0861b111dbd0d45991747bc9e7f5bbf85a73853acd59960784e8c5e5f17a","mathematical_subject":"Computation.DataStructures","original_sha256":"250e0861b111dbd0d45991747bc9e7f5bbf85a73853acd59960784e8c5e5f17a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/bitvec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardExpr
import Std.Data.BitVec.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GuardExpr.Variant250e0861b111dbd0d45991747bc9e7f5bbf85a73853acd59960784e8c5e5f17a

open Std.BitVec

-- Basic arithmetic
#guard 1#12 + 2#12 = 3#12
#guard 3#5 * 7#5 = 0x15#5
#guard 3#4 * 7#4 = 0x05#4

#guard zeroExtend  4 0x7f#8 = 0xf#4
#guard zeroExtend 12 0x7f#8 = 0x07f#12
#guard zeroExtend 12 0x80#8 = 0x080#12
#guard zeroExtend 16 0xff#8 = 0x00ff#16

#guard signExtend  4 0x7f#8 = 0xf#4
#guard signExtend 12 0x7f#8 = 0x07f#12
#guard signExtend 12 0x80#8 = 0xf80#12
#guard signExtend 16 0xff#8 = 0xffff#16

-- Division and mod/rem

#guard 3#4 / 0 = 0
#guard 10#4 / 2 = 5

#guard 8#4 % 0 = 8
#guard 4#4 % 1 = 0
#guard 4#4 % 3 = 1
#guard 0xf#4 % (-2) = 1
#guard 0xf#4 % (-8) = 7

#guard sdiv 6#4 2 = 3#4
#guard sdiv 7#4 2 = 3#4
#guard sdiv 6#4 (-2) = -3#4
#guard sdiv 7#4 (-2) = -3#4
#guard sdiv (-6#4) 2 = -3#4
#guard sdiv (-7#4) 2 = -3#4
#guard sdiv (-6#4) (-2) = 3#4
#guard sdiv (-7#4) (-2) = 3#4

#guard srem   3#4    2  =  1
#guard srem (-4#4)   3  = -1
#guard srem ( 4#4) (-3) =  1
#guard srem (-4#4) (-3) = -1

#guard smod   3#4    2  = 1
#guard smod (-4#4)   3  =  2
#guard smod ( 4#4) (-3) = -2
#guard smod (-4#4) (-3) = -1

-- ofInt/toInt

#guard .ofInt 3 (-1) = 0b111#3
#guard .ofInt 3 0 = 0b000#3
#guard .ofInt 3 4 = 0b100#3
#guard .ofInt 3 (-2) = 0b110#3
#guard .ofInt 3 (-4) = 0b100#3

#guard (0x0#4).toInt = 0
#guard (0x7#4).toInt = 7
#guard (0x8#4).toInt = -8
#guard (0xe#4).toInt = -2

-- Bitwise operations

#guard ~~~0b1010#4 = 0b0101#4
#guard 0b1010#4 &&& 0b0110#4 = 0b0010#4
#guard 0b1010#4 ||| 0b0110#4 = 0b1110#4
#guard 0b1010#4 ^^^ 0b0110#4 = 0b1100#4

-- shift operations
#guard 0b0011#4 <<< 3 = 0b1000
#guard 0b1011#4 >>> 1 = 0b0101
#guard sshiftRight 0b1001#4 1 = 0b1100#4
#guard rotateLeft  0b0011#4 3 = 0b1001
#guard rotateRight 0b0010#4 2 = 0b1000
#guard 0xab#8 ++ 0xcd#8 = 0xabcd#16

-- get/extract

#guard !getMsb 0b0101#4 0
#guard getMsb 0b0101#4 1
#guard !getMsb 0b0101#4 2
#guard getMsb 0b0101#4 3
#guard !getMsb 0b1111#4 4

#guard getLsb 0b0101#4 0
#guard !getLsb 0b0101#4 1
#guard getLsb 0b0101#4 2
#guard !getLsb 0b0101#4 3
#guard !getLsb 0b1111#4 4

#guard extractLsb 3 0 0x1234#16 = 4
#guard extractLsb 7 4 0x1234#16 = 3
#guard extractLsb' 0 4 0x1234#16 = 0x4#4

-- Pretty-printing

#guard toString 5#12 = "0x005#12"
#guard toString 5#13 = "0x0005#13"
#guard toString 5#12 = "0x005#12"
#guard toString 5#13 = "0x0005#13"
```
